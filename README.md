# Fly UX Challenge

This is a hiring challenge for candidates to demonstrate their skills in Phoenix LiveView and LLM integration.

## Challenge Overview

You are provided with a basic Phoenix application that includes:

1. A stubbed `ChatAPI` module in `lib/fly_ux_challenge/chat_api.ex`
2. A basic LiveView chat interface at `lib/fly_ux_challenge_web/live/chat_live.ex`

## Your Tasks

1. **LLM Integration**: Replace the stubbed `ChatAPI` module with actual calls to an LLM API of your choice (OpenAI, Anthropic, Mistral, Ollama, etc.)

2. **LiveView Enhancement**: Improve the basic chat interface to be a polished, professional LiveView experience:
   - Implement real-time message streaming using the `stream_message/1` function
   - Add proper styling and UX improvements
   - Ensure the UI is responsive and accessible

3. **Bonus (Optional)**: 
   - Add a chat history feature
   - Add the ability to change LLM models or parameters
   - Implement message markdown rendering

## Getting Started

1. Clone this repository
2. Install dependencies with `mix deps.get`
3. Start the Phoenix server with `mix phx.server`
4. Visit [`localhost:4000`](http://localhost:4000) in your browser

## Evaluation Criteria

You will be evaluated on:

1. **Code Quality**: Clean, maintainable Elixir code
2. **LiveView Usage**: Proper use of LiveView features and patterns
3. **UX Design**: Intuitiveness and polish of your interface
4. **LLM Integration**: How well you integrated with an LLM API

## Submission

Please create a Git repository with your solution and share it with us. Include instructions on how to set up and run your solution, including any environment variables needed for the LLM API.

Good luck!


