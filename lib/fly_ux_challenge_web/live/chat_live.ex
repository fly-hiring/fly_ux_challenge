defmodule FlyUxChallengeWeb.ChatLive do
  use FlyUxChallengeWeb, :live_view
  alias FlyUxChallenge.ChatAPI

  @impl true
  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(:messages, [])
     |> assign(:message, "")}
  end

  @impl true
  def handle_event("submit", %{"message" => message}, socket) when message != "" do
    # Add user message to the chat
    messages = socket.assigns.messages ++ [%{role: "user", content: message}]
    socket = assign(socket, messages: messages, message: "")

    # Send message to the Chat API
    case ChatAPI.send_message(message) do
      {:ok, response} ->
        # Add AI response to the chat
        messages = socket.assigns.messages ++ [%{role: "assistant", content: response.content}]
        {:noreply, assign(socket, messages: messages)}

      {:error, reason} ->
        # Add error message to the chat
        messages = socket.assigns.messages ++ [%{role: "error", content: reason}]
        {:noreply, assign(socket, messages: messages)}
    end
  end

  def handle_event("submit", _, socket) do
    {:noreply, socket}
  end

  @impl true
  def handle_event("change", %{"message" => message}, socket) do
    {:noreply, assign(socket, message: message)}
  end
end
