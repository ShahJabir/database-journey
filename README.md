# 🗄️ Database Journey — A Systems-Level Learning Path

> **Not a query tutorial. Not a quick-start guide.**
> This repository is a **deep, internals-first journey into databases** — from query execution to storage engines, from schema design to distributed data architecture.

If you are here to _"learn CRUD"_, this repo is **not for you**.
If you want to **understand what databases really are and how they work under the hood**, welcome.

---

## 🎯 Purpose of This Repository

This repository exists to:

- Understand **databases as systems**, not just tools
- Learn **SQL and NoSQL fundamentals** with a focus on internals
- Build **deep intuition** for how data is stored, indexed, and retrieved
- Understand **OS and storage concepts** behind database engines
- Learn how databases achieve **consistency, durability, and performance**
- Write **high-performance, optimized queries and schema designs**
- Read and understand **database documentation and source code** confidently
- Explore **database engineering and distributed architecture**

This is a **learning log + reference + code lab**.

---

## 🧠 Philosophy

```text
Tools come and go.
Data and the systems that manage it stay forever.
```

Principles followed in this repo:

- ❌ No ORM magic without understanding what's underneath
- ❌ No copy-paste queries without knowing why they work
- ✅ Internals first
- ✅ Source-code and documentation curiosity
- ✅ Performance and correctness over convenience
- ✅ Understanding "why", not just "how"

Whenever possible, concepts are explored **from first principles** before reaching for abstractions.

---

## 🗺️ Learning Scope

This repository covers **far more than just SQL**:

- Relational database fundamentals (PostgreSQL internals)
- SQL deep dive — execution, optimization, query planning
- Indexing strategies and B-tree internals
- Transactions, ACID, and isolation levels
- Storage engines and WAL (Write-Ahead Logging)
- Document databases (MongoDB internals)
- In-memory data structures and caching (Redis)
- Wide-column stores (Apache Cassandra)
- Streaming and event-driven data layers (Apache Kafka)
- Distributed database systems and consensus
- Database engineering and architecture patterns

Think of this as:

> **Systems Engineering through the lens of Data**

---

## 📍 Current Focus

```text
Phase 1 → SQL (PostgreSQL)   ← YOU ARE HERE
Phase 2 → Document DB (MongoDB)
Phase 3 → In-Memory / Cache (Redis)
Phase 4 → Wide-Column (Apache Cassandra)
Phase 5 → Event Streaming (Apache Kafka as a data layer)
Phase 6 → ... (To be decided)
Phase 7 → Database Engineering & Architecture
```

---

## 📦 Core Rule: Depth Before Breadth

Every topic explored here follows the same progression:

1. **What is it?** — Conceptual foundation
2. **How does it work?** — Internal mechanics
3. **Why is it designed this way?** — Trade-offs and history
4. **Where does it break?** — Failure modes and edge cases
5. **How do I use it well?** — Practical, performance-aware application

External tools and GUIs are only discussed **conceptually** or for verification — raw SQL, CLI, and documentation are the primary interface.

---

## 🧪 How to Use This Repository

### 1️⃣ Read

Each directory contains **Markdown notes** explaining:

- Concepts and internals
- Why databases are designed the way they are
- Trade-offs between different approaches

### 2️⃣ Code

Every concept is backed by:

- Raw SQL / query experiments
- Minimal reproducible examples
- Performance-oriented comparisons

### 3️⃣ Break Things Intentionally

- Trigger deadlocks
- Exhaust connection pools
- Observe query planner regressions
- Force index scans vs sequential scans

Then understand **why it broke** and what the engine was thinking.

---

## 🚀 Who This Repo Is For

This repository is ideal for:

- Backend engineers who want **real depth in data systems**
- DevOps / Platform engineers managing database infrastructure
- Security engineers who need to understand data-layer attack surfaces
- Developers moving beyond ORMs and query builders
- Anyone who wants to understand what `EXPLAIN ANALYZE` is really telling them

This repo is **not beginner-friendly** — and that is intentional.

---

## 📌 Expected Outcome

After completing this repository, you should be able to:

- Explain PostgreSQL's MVCC and WAL with confidence
- Design schemas that scale without index bloat
- Understand when to reach for MongoDB, Redis, or Cassandra — and why
- Read and interpret query execution plans
- Debug slow queries and fix them at the engine level
- Architect polyglot persistence systems
- Reason about consistency, availability, and partition tolerance trade-offs
- Build a rudimentary storage engine from scratch

---

## 🛠️ Environment Setup

> 📌 Set `.env` then run docker-compose.yaml

```bash
docker compose up -d # start Docker compose
```

```bash
docker compose down # stop Docker compose
```

---

## ⚠️ Disclaimer

This repository is:

- Opinionated
- Internals-focused
- Performance-oriented

It prioritizes **understanding over speed** and **depth over comfort**.

Notes here may contradict conventional wisdom — when they do, there will always be a reason.

---

## 👤 Author

<p align="center">
<a href="https://shahjabir.com.bd">
<img src="https://img.shields.io/badge/Website-ShahJabir-black" alt="Website" /></a>
<a href="https://github.com/ShahJabir">
<img src="https://img.shields.io/badge/Github-ShahJabir-white" alt="Github" /></a>
<a href="https://www.facebook.com/sjtaqi">
<img src="https://img.shields.io/badge/Facebook-ShahJabir-blue" alt="Facebook" /></a>
<a href="https://x.com/TaqiJabir">
<img src="https://img.shields.io/badge/X-TaqiJabir-black" alt="Twitter" />
</a>
<a href="https://www.linkedin.com/in/shahjabir/">
<img src="https://img.shields.io/badge/Linkedin-shahjabirtaqi-blue" alt="Linkedin" /></a>
</p>

---

## 📄 License

This repository is licensed under the [MIT License](./LICENSE).
All notes, diagrams, and code are original work unless explicitly cited.

---

## 🏁 Final Words

```text
Most people query databases.
Very few understand them.
This repo is for the second group.
```

Happy querying — and may your indexes always be used 🚀
