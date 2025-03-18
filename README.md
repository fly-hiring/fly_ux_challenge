# Fly UX Challenge

Hello! This is a hiring project for our [UX Engineer position](https://fly.io/jobs/ux-engineer/). If you apply, we’ll ask you to do this project so we can see how you work through a contrived (yet shockingly accurate) example of the type of things you’d do at Fly.io.

As a UX Engineer at Fly.io, you’ll be working on the interfaces around our platform product. Checkout the [job post](https://fly.io/jobs/ux-engineer/) for the nitty gritty.

We want you to write some code to solve this problem, and tell us about your solution in the NOTES.md file. More details below!

## Challenge Overview

This is a hiring challenge for candidates to demonstrate their skills in Phoenix LiveView and design.

You are provided with a basic Phoenix application that includes:

1. A stubbed `ChatAPI` module in `lib/fly_ux_challenge/chat_api.ex`
2. A basic LiveView chat interface at `lib/fly_ux_challenge_web/live/chat_live.ex`

## Your Tasks

1. **LLM Integration**: Replace the stubbed `ChatAPI` module with actual calls to an LLM API of your choice (OpenAI, Anthropic, Mistral, Ollama, etc.) Don't worry about real-time message streaming.

2. **LiveView Enhancement**: Improve the basic chat interface to be a polished, professional user experience:
   - Add styling and UX improvements
   - Ensure the UI is responsive and accessible

3. **Style chat response contents**: Create a mock UI for the different types of things that an LLM's chat response might include. Think images, docs, code snippets, etc. We want to see how you'd show structured LLM response information.

## Getting Started

1. Clone this repository
2. Install dependencies with `mix deps.get`
3. Start the Phoenix server with `mix phx.server`
4. Visit [`localhost:4000`](http://localhost:4000) in your browser

## What We're Looking For

By this point, you've talked to us about how you make product decisions. This project is a sample of what we think you'll need to do this job well. We're interested in seeing your approach to problem-solving, how you make technical and design choices, and how you balance functionality with user experience.

There's no single "right" way to complete this challenge. Rather than giving you a checklist, we want to see how you prioritize and implement features that create an easy-to-use product.

## Submission

Please create a Git repository with your solution and share it with us.

Include instructions on how to set up and run your solution, including any environment variables needed for the LLM API.

NOTES.md is a place for you to show us how you think about the problem and what you'd be thinking about if you were in charge of this feature at Fly.io.

Good luck!

# Tips, more information, etc.

## What we're looking for

We want to see three things:

1. You can write some Elixir code to solve a problem.
2. You can can design a usable, streamlined interface.
3. You're always thinking about the user. This should show up in decisions you make in the code, as well as in the Notes!

That is really it.

One more tip: we care a lot about scope. You might be tempted to try and design something elaborate, but that's not what we want for this exercise. We're asking for focused work. We're not asking you to do extra work.

## Don't do this

There's a lot of extra work you'd do in real life that we don't need to see here. Feel free to skip these things:

* Don't worry about making real-time message streaming work.
* Don't spend time making this perfect or writing tests for every scenario.
* Don't solve every edge case. Rough edges are fine if it helps you move quickly, and you can document your decisions and trade-offs in NOTES.md.
* Skip quality of life improvements. We're wary of code coverage tools, refactors, testing library changes, etc. We definitely don't want you to spend time on that stuff.
* And last, if you know what you're doing, don't spend more than two hours writing the code. If you are learning, take all the time you need. But if you're experienced with Phoenix (Elixir), this should be a quick project. Really, we mean it. This shouldn't eat up your whole weekend.

## How to submit your work
Push your changes to the main branch of your private repo, and send us an email (respond in the thread) letting us know you're done so we can review it.

## How we evaluate
A real human (an experienced engineer at Fly) is going to read your notes and your code carefully. In particular, they look for:

* Your code solves the problem we've asked you to solve.
* You kept the user experience in mind when you made decisions about what to implement.
* You didn't cover every single possible error case, but you took care to handle the one or two most important error cases (from the user's perspective), or if you didn't have time for this, you explained in the notes how you would handle it.
* Your code is generally easy to understand, and you kept control flow simple. We don't care if you know Elixir idioms yet, we just want to see at least vaguely readable code.
* There's some design polish (you're not just handing us raw HTML).
* Your solution is simple and not over-scoped.