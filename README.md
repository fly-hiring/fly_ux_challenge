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

## Getting Started

1. Clone this repository
2. Install dependencies with `mix deps.get`
3. Start the Phoenix server with `mix phx.server`
4. Visit [`localhost:4000`](http://localhost:4000) in your browser

## What We're Looking For

By this point, you've talked to us about how you make product decisions. This project is a sample of what we think you'll need to do this job well. We're interested in seeing your approach to problem-solving, how you make technical and design choices, and how you balance functionality with user experience.

There's no single "right" way to complete this challenge. Rather than giving you a checklist, we want to see how you prioritize and implement features that create a compelling, usable product.

## Submission

Please create a Git repository with your solution and share it with us. Include instructions on how to set up and run your solution, including any environment variables needed for the LLM API.

Good luck!
