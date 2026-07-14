# OPINIONS.md

This file is a compact map of Carlos Cuesta's public viewpoints inferred from his blog and X activity.
It is optimized for readability and conciseness, so it consolidates repeated signals and keeps evidence links sparse.

## Engineering process and documentation

### High-impact decisions deserve a written process

Carlos believes high-impact decisions that require broad alignment should go through a formal RFC process before any architecture decision record is written.
The RFC collects discussion and reaches consensus; the ADR then records the outcome, the context, and the consequences.
He weighs the effort of running an RFC against the impact of the change — not every decision warrants one, but introducing a new service, a major architecture change, or a feature with overarching impact does.
He warns that decisions that live only in Slack threads will be lost over time, and that materializing them into documents is how future teammates understand the reasoning behind a codebase.
Evidence: carloscuesta.me/blog/writing-rfcs, carloscuesta.me/blog/writing-architecture-decision-records

### Documentation belongs next to the code

Carlos believes documentation should live inside the repository, not in external tools like Confluence or Notion.
Storing it in a separate platform increases the barrier to contribute, reduces its visibility, and means it decays faster than the code it describes.
He recommends a `docs/adrs/` folder with a consistent naming convention and a simple template covering status, context, decision, and consequences.
Evidence: carloscuesta.me/blog/writing-architecture-decision-records

## Remote work and communication

### Written communication requires discipline and positive intent

Carlos defaults to positivity in written communication and asks whether he would say a message word-for-word to someone's face before sending it.
He prefers public channels over DMs and group chats because private communication discourages collaboration and keeps information away from people who would benefit from it.
When a long text thread goes nowhere, he thinks the right move is a short video call — ten minutes often closes what hours of async cannot.
Evidence: carloscuesta.me/blog/working-remotely-as-a-software-engineer

### Protect working hours and document everything on remote teams

Carlos believes working hours must be actively protected in a remote setting because the risk of burnout is real and the lack of physical separation between work and home makes it easy to overwork.
He treats the flexible schedule as a genuine perk of remote work, not an invitation to work more.
He also sees documentation as a prerequisite for remote teams: important decisions from chat tools must be written down somewhere durable, and onboarding a new engineer onto a remote team without a knowledge base wastes everyone's time.
Evidence: carloscuesta.me/blog/working-remotely-as-a-software-engineer

## Developer experience, tooling, and automation

### Automation is the key to high-velocity teams

Carlos believes that as soon as a team relies on automated processes, engineers feel more confident and ship faster because trust removes the fear of change.
Tools must run in CI/CD pipelines, not only on local machines — git hooks are a useful supplement but something that runs locally can always be skipped.
He favors GitHub Actions as his preferred CI/CD platform and has moved all his open source projects to it.
He also warns against defaulting to familiar tools out of comfort: choosing a tool based on familiarity rather than the problem at hand limits knowledge and prevents discovering more efficient alternatives.
Evidence: carloscuesta.me/blog/front-end-tooling-guide-to-improve-developer-experience, x.com/crloscuesta/status/1323318526879432709

### Linters, formatters, and static typing belong in the pipeline

Carlos thinks linters and formatters are essential for codebase consistency, and that consistency matters more than which particular style is chosen.
Running them on pre-commit hooks via Husky and lint-staged keeps code readable before the review process begins.
He values static type checking in JavaScript because it significantly improves development speed, confidence, and the safety of refactoring.
His ideal form of static typing would be native type annotations treated as code comments — no separate build step, no moving the community away from the original language.
He uses TypeScript in practice and acknowledges its benefits, but views a separate transpilation layer as not the ideal long-term answer; the TC39 type annotations proposal represents the direction he finds most compelling.
Evidence: carloscuesta.me/blog/front-end-tooling-guide-to-improve-developer-experience, x.com/crloscuesta/status/1501681917778968577

### Simplicity is a recurring lens

Carlos returns to simplicity as a goal across software architecture, editor choices, and tooling philosophy.
He strongly agrees that unnecessary complexity should always be avoided and considers the KISS principle a reliable heuristic.
He appreciated Atom specifically because it was simple and effective without demanding attention — no squiggles, no demanding attention popups, less is more.
Evidence: x.com/crloscuesta/status/1543686868729995266, x.com/crloscuesta/status/1534789967951679489

### Automate the development environment itself

Carlos believes the machine setup should be as reproducible as the code it runs.
A single command to go from a fresh machine to a complete personal environment — dotfiles, applications, tools, system settings — is worth the upfront investment.
He uses chezmoi as his tool for managing dotfiles across personal and work machines, with template files, age encryption, and `run_once` hooks to handle per-machine differences.
Evidence: carloscuesta.me/blog/automated-macos-dev-setup

## Testing strategy

### Integration tests deserve the most focus

Carlos believes integration tests offer the best ratio of effort to confidence and should receive the most testing focus.
Unit tests are fast but give low-confidence results in isolation; integration tests verify how pieces work together as a user would interact with them.
He uses the umbrella analogy — unit tests that pass individually can still fail to protect against real breakage.
End-to-end tests should cover only the most critical user flows because they run on real browsers against real APIs and are slow and costly to maintain.
Evidence: carloscuesta.me/blog/front-end-tooling-guide-to-improve-developer-experience

## Architecture and JavaScript ecosystem

### Server-Driven UIs are powerful but not universal

Carlos sees Server-Driven UIs as a strong pattern for content-heavy applications that require frequent updates without client releases.
The server sends a component tree rather than raw data; clients traverse and render it without knowing what to show.
He considers state management synchronization and offline support to be the main challenges, and is clear that SDUI is not a one-size-fits-all solution.
Evidence: carloscuesta.me/blog/building-server-driven-uis

### Serverless and static generation over self-hosted infrastructure

Carlos moved his personal website from a self-hosted DigitalOcean Node.js and Ghost setup to a JAMstack architecture specifically to stop thinking about systems.
He views static generation at build time combined with a CDN as simpler, faster, and lower maintenance than managing a server.
Evidence: carloscuesta.me/blog/moving-to-digitalocean, x.com/crloscuesta/status/1276194961185214469

### Bet on JavaScript fundamentals, not frameworks

Carlos's view is that JavaScript — and React and React Native specifically — is the right foundation for building both web and native apps, sharing a codebase and components across platforms.
He emphasizes learning the fundamentals and paradigms of a language over chasing frameworks, because frameworks come and go while a solid understanding of core concepts provides flexibility across an ever-evolving ecosystem.
He also believes large ecosystem transitions like CommonJS to ESM should be handled carefully, with a gradual migration path — packages that drop backward compatibility abruptly make the whole community's transition harder.
Evidence: x.com/crloscuesta/status/1788818753699918333, x.com/crloscuesta/status/1690355951944024064, x.com/crloscuesta/status/1576981660108980225

## Code quality, productivity, and git

### Code quality decays without active stewardship

Carlos believes codebases naturally drift toward lower quality over time unless someone actively holds the bar.
Tooling, CI pipelines, linters, formatters, and type checkers are not set-and-forget — they require ongoing attention as the codebase and team evolve.
Documentation shares the same pattern: without deliberate maintenance, ADRs go stale, onboarding degrades, and institutional knowledge leaks out through attrition.
He sees automation as the practical answer to stewardship at scale — enforcing quality through systems rather than through heroic individual effort.

### Great engineers create valuable outcomes

Carlos measures engineering greatness by outcomes, not by the elegance of the code alone.
A great engineer ships things that matter, reduces friction for the team around them, and improves the system in ways that compound over time.
He values the full stack of engineering work: writing clean, well-tested code is necessary but not sufficient — understanding what to build, why it matters, and how to get it across the finish line is what separates good engineers from great ones.
He believes developer experience work is part of engineering greatness, not a distraction from it, because a team that ships reliably and confidently produces more value than one that ships more code with less confidence.

### Managers and senior engineers must create leverage

Carlos believes that senior engineers and managers earn their place on a team by creating leverage — making the people around them more effective, not by being the best individual contributor in the room.
Senior engineers create leverage through technical direction, raising the quality bar, unblocking others, and reducing the overhead of day-to-day decisions.
He is skeptical of processes where small changes require excessive approvals or meetings, and prefers team structures that give engineers the autonomy to move quickly within clear guardrails.

### Code is not the bottleneck, scope, requirements, and reviews are

Carlos believes code has rarely been the deepest bottleneck in software work.
The harder questions are what to build, why it matters, and how to verify that it works — which is why he invests in RFCs, ADRs, and integration tests rather than only in writing more code faster.
He thinks planning and alignment through documents like RFCs surfaces edge cases and bad assumptions earlier, when they are cheap to fix, rather than after implementation, when they are expensive.
Reviews — whether of code, architecture, or proposals — are where compounding quality improvements happen, and skipping them to move faster tends to create rework that costs more than the time saved.
Evidence: carloscuesta.me/blog/writing-rfcs, carloscuesta.me/blog/writing-architecture-decision-records, carloscuesta.me/blog/front-end-tooling-guide-to-improve-developer-experience

### Generators and codemods are force multipliers

Carlos believes code generators reduce boilerplate, create consistency, and improve team productivity in a way that pays off over time.
For large-scale changes, codemods are the right tool: writing code that transforms code is more reliable and repeatable than manual changes across hundreds of files.
Evidence: carloscuesta.me/blog/using-generators-to-improve-developer-productivity, carloscuesta.me/blog/effective-refactoring-with-codemods

### Commit conventions and git workflow matter

Carlos's preferred git workflow is feature branches, rebase on top of main, and squash and merge.
He believes commit messages benefit from a consistent, intent-signaling convention and that the overhead of one is worth the improvement in git history readability.
He created gitmoji as his preferred convention and considers it a distinct standard that should not absorb Conventional Commits format — they serve different purposes.
Evidence: carloscuesta.me/blog/git-development-workflow, github.com/carloscuesta/gitmoji/issues/1725
