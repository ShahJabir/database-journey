# 📚 Resources

> A curated list of books, papers, documentation, talks, and tools that guide this journey.
> Quality over quantity — everything here has earned its place.

---

## 🏛️ Legend

| Symbol | Meaning                     |
| ------ | --------------------------- |
| ⭐     | Essential — read this first |
| 📖     | Book                        |
| 📄     | Paper / Article             |
| 🎥     | Talk / Video                |
| 🌐     | Documentation / Website     |
| 🛠️     | Tool                        |
| ✅     | Completed                   |
| 🟡     | In Progress                 |
| ⬜     | Queued                      |

---

## 🌍 Foundational — All Databases

### Books

| Resource                                                                                         | Status | Notes                                                                           |
| ------------------------------------------------------------------------------------------------ | ------ | ------------------------------------------------------------------------------- |
| ⭐ 📖 [Designing Data-Intensive Applications — Martin Kleppmann](https://dataintensive.net/)     | ⬜     | The bible of modern data systems. Read this cover to cover.                     |
| 📖 [Database Internals — Alex Petrov](https://www.databass.dev/)                                 | ⬜     | Deep dive into storage engines, B-trees, LSM trees, and distributed algorithms. |
| 📖 [Readings in Database Systems (Red Book) — Hellerstein & Stonebraker](http://www.redbook.io/) | ⬜     | Foundational academic papers with editorial commentary.                         |

### Papers

| Resource                                                                                                                                                   | Status | Notes                                                                       |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------- | ------ | --------------------------------------------------------------------------- |
| ⭐ 📄 [A Relational Model of Data for Large Shared Data Banks — E.F. Codd (1970)](https://www.seas.upenn.edu/~zives/03f/cis550/codd.pdf)                   | ⬜     | The original paper that started relational databases.                       |
| 📄 [ARIES: A Transaction Recovery Method — Mohan et al.](https://cs.stanford.edu/people/chrismre/cs345/rl/aries.pdf)                                       | ⬜     | Foundation of WAL and crash recovery used in most databases today.          |
| 📄 [The Google Bigtable Paper](https://static.googleusercontent.com/media/research.google.com/en//archive/bigtable-osdi06.pdf)                             | ⬜     | Influenced Cassandra, HBase, and wide-column stores broadly.                |
| 📄 [Dynamo: Amazon's Highly Available Key-Value Store](https://www.allthingsdistributed.com/files/amazon-dynamo-sosp2007.pdf)                              | ⬜     | Foundation of eventual consistency and influenced Cassandra's architecture. |
| 📄 [CAP Twelve Years Later: How the "Rules" Have Changed — Eric Brewer](https://www.infoq.com/articles/cap-twelve-years-later-how-the-rules-have-changed/) | ⬜     | Brewer revisits and refines his own theorem. Required reading.              |

---

## 🐘 Phase 1 — PostgreSQL

### Official Documentation

| Resource                                                                       | Status | Notes                                                                 |
| ------------------------------------------------------------------------------ | ------ | --------------------------------------------------------------------- |
| ⭐ 🌐 [PostgreSQL 16 Official Docs](https://www.postgresql.org/docs/16/)       | 🟡     | Primary reference. Never skip the official docs.                      |
| 🌐 [PostgreSQL Wiki — Internals](https://wiki.postgresql.org/wiki/Internals)   | ⬜     | Community notes on internals not always in official docs.             |
| 🌐 [The Internals of PostgreSQL — Hironobu Suzuki](https://www.interdb.jp/pg/) | ⬜     | Free online book. Exceptional depth on heap files, WAL, MVCC, vacuum. |

### Books

| Resource                                                                                                                         | Status | Notes                                                                     |
| -------------------------------------------------------------------------------------------------------------------------------- | ------ | ------------------------------------------------------------------------- |
| ⭐ 📖 [PostgreSQL: Up and Running — Regina Obe & Leo Hsu](https://www.oreilly.com/library/view/postgresql-up-and/9781491963180/) | ⬜     | Solid practical foundation with good coverage of intermediate features.   |
| 📖 [PostgreSQL Query Optimization — Henrietta Dombrovskaya et al.](https://link.springer.com/book/10.1007/978-1-4842-6885-8)     | ⬜     | Deep focus on the query planner, statistics, and optimization strategies. |

### Articles & Papers

| Resource                                                                                                       | Status | Notes                                                                          |
| -------------------------------------------------------------------------------------------------------------- | ------ | ------------------------------------------------------------------------------ |
| ⭐ 📄 [How PostgreSQL Executes a Query](https://www.postgresql.org/docs/current/query-path.html)               | ⬜     | Official explanation of the full query path: parse → rewrite → plan → execute. |
| 📄 [MVCC in PostgreSQL — Cybertec Blog](https://www.cybertec-postgresql.com/en/mvcc-an-illusionist-mechanism/) | ⬜     | One of the clearest explanations of MVCC and its trade-offs.                   |
| 📄 [Explaining the Postgres Query Planner — Luca Ferrari](https://fluca1978.github.io/)                        | ⬜     | Practical breakdowns of `EXPLAIN ANALYZE` output.                              |

### Talk / Video

| Resource                                                                                                                 | Status         | Notes                                                                |
| ------------------------------------------------------------------------------------------------------------------------ | -------------- | -------------------------------------------------------------------- |
| 🎥 [PostgreSQL Internals Through Pictures — Stephen Frost](https://www.youtube.com/watch?v=Qr-hNcKRFjk)                  | ⬜             | Visual walk through how Postgres stores and retrieves data.          |
| 🎥 [MVCC Unmasked — Bruce Momjian](https://momjian.us/main/presentations/internals.html)                                 | ⬜             | The best talk on PostgreSQL MVCC by a core contributor.              |
| 🎥 [SQL Full Course for Beginners (30 Hours) – From Zero to Hero - YouTube](https://www.youtube.com/watch?v=SSKVgrwhzus) | 🟡 In Progress | One of the best video tutorial about SQL (This video focus on MSSQL) |

### Tools

| Tool                    | Purpose                                         |
| ----------------------- | ----------------------------------------------- |
| ⭐ 🛠️ `psql`            | Primary CLI interface — know it deeply          |
| 🛠️ `EXPLAIN ANALYZE`    | Query plan inspection and performance profiling |
| 🛠️ `pg_stat_statements` | Track query performance over time               |
| 🛠️ `pgBadger`           | Log analyzer for slow query investigation       |
| 🛠️ `pgBench`            | Built-in benchmarking tool                      |

---

## 🍃 Phase 2 — MongoDB

_Resources will be added when Phase 2 begins._

### Bookmarked for Later

| Resource                                                                                                                                 | Notes                                           |
| ---------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------- |
| ⭐ 🌐 [MongoDB Official Docs](https://www.mongodb.com/docs/)                                                                             | Primary reference                               |
| 📖 [MongoDB: The Definitive Guide — Shannon Bradshaw et al.](https://www.oreilly.com/library/view/mongodb-the-definitive/9781491954454/) | Most comprehensive book on MongoDB              |
| 📄 [WiredTiger Storage Engine Internals](https://source.wiredtiger.com/develop/arch-index.html)                                          | Deep dive into MongoDB's default storage engine |

---

## 🔴 Phase 3 — Redis

_Resources will be added when Phase 3 begins._

### Bookmarked for Later

| Resource                                                                             | Notes                              |
| ------------------------------------------------------------------------------------ | ---------------------------------- |
| ⭐ 🌐 [Redis Official Docs](https://redis.io/docs/)                                  | Primary reference                  |
| 📖 [Redis in Action — Josiah Carlson](https://www.manning.com/books/redis-in-action) | Practical and internals-aware      |
| 🌐 [Redis Internals — Antirez Blog](http://antirez.com/latest/0)                     | Posts from Redis's original author |

---

## 🪨 Phase 4 — Apache Cassandra

_Resources will be added when Phase 4 begins._

### Bookmarked for Later

| Resource                                                                                                                                                                   | Notes                                                |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------- |
| ⭐ 🌐 [Apache Cassandra Official Docs](https://cassandra.apache.org/doc/latest/)                                                                                           | Primary reference                                    |
| 📖 [Cassandra: The Definitive Guide — Jeff Carpenter & Eben Hewitt](https://www.oreilly.com/library/view/cassandra-the-definitive/9781098115159/)                          | Best book for both practical and architectural depth |
| 📄 [Cassandra: A Decentralized Structured Storage System — Lakshman & Malik (Facebook, 2009)](https://www.cs.cornell.edu/projects/ladis2009/papers/lakshman-ladis2009.pdf) | Original Cassandra paper from Facebook               |

---

## 📨 Phase 5 — Apache Kafka (as a data layer)

_Resources will be added when Phase 5 begins._

### Bookmarked for Later

| Resource                                                                                                                                                                                                | Notes                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| ⭐ 🌐 [Apache Kafka Official Docs](https://kafka.apache.org/documentation/)                                                                                                                             | Primary reference                                                                        |
| 📖 [Kafka: The Definitive Guide — Neha Narkhede et al.](https://www.oreilly.com/library/view/kafka-the-definitive/9781491936153/)                                                                       | Industry standard Kafka book                                                             |
| ⭐ 📄 [The Log: What every software engineer should know — Jay Kreps](https://engineering.linkedin.com/distributed-systems/log-what-every-software-engineer-should-know-about-real-time-datas-unifying) | Foundational essay on logs as a data structure. Essential reading before touching Kafka. |

---

## 🏗️ Phase 7 — Database Engineering & Architecture

_Resources will be populated as this phase approaches._

### Bookmarked for Later

| Resource                                                                                                                                | Notes                                                                                                  |
| --------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------ |
| 📖 [Database Internals — Alex Petrov](https://www.databass.dev/)                                                                        | Already listed above — directly feeds into this phase                                                  |
| 📄 [Architecture of a Database System — Hellerstein, Stonebraker & Hamilton](http://db.cs.berkeley.edu/papers/fntdb07-architecture.pdf) | Comprehensive survey of how database systems are built                                                 |
| 🎥 [CMU 15-445/645 Database Systems — Andy Pavlo](https://15445.courses.cs.cmu.edu/)                                                    | Free university course with lectures, slides, and projects. Among the best database courses available. |
| 🎥 [CMU 15-721 Advanced Database Systems — Andy Pavlo](https://15721.courses.cs.cmu.edu/)                                               | Graduate-level follow-up covering modern techniques                                                    |

---

## 🔬 Distributed Systems (Cross-cutting)

These apply across Cassandra, Kafka, and database architecture phases.

| Resource                                                                                                                                              | Status | Notes                                                                  |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | ------ | ---------------------------------------------------------------------- |
| 📄 [Time, Clocks, and the Ordering of Events — Leslie Lamport (1978)](https://lamport.azurewebsites.net/pubs/time-clocks.pdf)                         | ⬜     | Foundational paper on distributed time and causality                   |
| 📄 [Raft Consensus Algorithm](https://raft.github.io/raft.pdf)                                                                                        | ⬜     | Easier to understand than Paxos. Used in etcd, CockroachDB, and others |
| 📄 [Spanner: Google's Globally-Distributed Database](https://static.googleusercontent.com/media/research.google.com/en//archive/spanner-osdi2012.pdf) | ⬜     | TrueTime and global consistency at scale                               |
| 🎥 [Distributed Systems Lecture Series — Martin Kleppmann](https://www.youtube.com/playlist?list=PLeKd45zvjcDFUEv_ohr_HdUFe97RItdiB)                  | ⬜     | Free Cambridge lecture series. Pairs perfectly with DDIA               |

---

## 🧰 General Tools Used Across This Repo

| Tool                                | Purpose                                                       |
| ----------------------------------- | ------------------------------------------------------------- |
| 🛠️ Docker                           | Running database instances locally without polluting the host |
| 🛠️ `psql` / `mongosh` / `redis-cli` | Native CLIs — first interface before any GUI                  |
| 🛠️ DBeaver                          | GUI for cross-database exploration when needed                |
| 🛠️ Excalidraw                       | Diagramming storage structures and architectures              |

---

> 📌 This list grows as the journey does. A resource earns its place here by being genuinely useful — not just frequently cited.
