defmodule FlyUxChallenge.ChatAPI do
  @moduledoc """
  A stubbed module for chat functionality.

  This module provides a basic API for sending chat messages and receiving responses.
  In this skeleton implementation, responses are hardcoded.

  CANDIDATE TASK: Replace this implementation with actual calls to an LLM API of your choice.
  """

  @doc """
  Send a message to the chat API and receive a response.

  ## Parameters
    * `message` - The chat message sent by the user

  ## Returns
    * `{:ok, response}` - A successful response from the chat API
    * `{:error, reason}` - An error occurred
    
  ## Examples
      iex> ChatAPI.send_message("Hello, how are you?")
      {:ok, %{
        id: "msg_123",
        content: "I'm just a stubbed response. Replace me with an actual LLM integration!",
        created_at: ~U[2023-09-25 14:30:45Z]
      }}
  """
  def send_message(message) when is_binary(message) do
    # This is a stub implementation that returns predefined responses
    # CANDIDATE TASK: Replace this with actual LLM API calls

    # Simulate a slight delay like a real API call
    Process.sleep(300)

    response = %{
      id: "msg_#{:rand.uniform(1000)}",
      content:
        "This is a stubbed response to: \"#{message}\".\n\nReplace this with real LLM integration!",
      created_at: DateTime.utc_now()
    }

    {:ok, response}
  end

  def send_message(_) do
    {:error, "Message must be a string"}
  end

  @doc """
  Stream a chat response back as chunks.

  ## Parameters
    * `message` - The chat message sent by the user
    
  ## Returns
    * Stream of response chunks
    
  CANDIDATE TASK: Implement this to stream responses from the LLM in real-time
  """
  def stream_message(message) when is_binary(message) do
    # This is a stub implementation that returns a stream of predefined response chunks
    # CANDIDATE TASK: Replace this with actual LLM API streaming

    response_text =
      "This is a stubbed streaming response to: \"#{message}\".\n\nReplace this with real LLM streaming integration!"

    # Convert the response to a stream of chunks
    response_text
    |> String.codepoints()
    |> Enum.chunk_every(5)
    |> Enum.map(&Enum.join/1)
    |> Stream.map(fn chunk ->
      # Simulate streaming delay
      Process.sleep(50)

      %{
        id: "chunk_#{:rand.uniform(1000)}",
        content: chunk,
        created_at: DateTime.utc_now()
      }
    end)
  end

  def stream_message(_) do
    Stream.map([:error], fn _ ->
      %{error: "Message must be a string"}
    end)
  end
end
