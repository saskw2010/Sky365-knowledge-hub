# AirLLM Layer-wise Inference Lab

## Identity

- **ID:** `AIRLLM_LAYER_STREAMING`
- **Canonical parent:** `D02 / Local Inference`
- **Type:** `REFERENCE_PROJECT`
- **Status:** `RESEARCH`
- **Disposition:** `EMBED`
- **Owner:** WytSky AI Runtime Lab
- **Last reviewed:** 2026-08-04

## Purpose

Evaluate whether layer-streamed inference can provide a technically useful fallback for models larger than available RAM or VRAM on local WytSky hardware.

## Scope

### In scope

- AirLLM-style sequential layer loading.
- Comparison with llama.cpp/GGUF mmap and CPU/GPU offload.
- Comparison with Hugging Face Accelerate disk offload.
- Offline and batch-generation feasibility.
- Integration as an experimental backend behind the Sky365 Model Gateway.

### Out of scope

- Treating AirLLM as an independent commercial product.
- Production deployment before benchmark evidence.
- Promising interactive performance merely because a model starts successfully.

## Current state

Research candidate only. No verified production integration is recorded in the canonical register.

## Decision gate

Promote beyond research only when a reproducible benchmark demonstrates a useful workload on available hardware. A model starting without out-of-memory failure is not sufficient evidence.

## Next action

- Inspect the actual Sky365 runtime for existing offload and provider abstractions.
- Benchmark a small baseline, a medium model, and a model exceeding VRAM.
- Record TTFT, tokens/sec, RAM, VRAM, disk throughput, context length, and failure mode.
