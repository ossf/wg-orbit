# Contributing to the OpenSSF ORBIT Working Group

Welcome! We're excited that you're interested in contributing to the Open Resources for Baselines, Interoperability, and Tooling (ORBIT) Working Group. We aim to create a supportive, inclusive environment where everyone can thrive and make meaningful contributions.

## How to Connect with Us

- **Public Calendar:** Stay informed about our meetings, events, and activities by checking our [public calendar](https://openssf.org/calendar).

- **Slack Channel:** Join the conversation on our #wg-orbit [OpenSSF Slack channel](https://openssf.slack.com/archives/C08NJTFAL74). This is the best place to ask questions, share ideas, and collaborate.

## How to Contribute

We value all contributions, from improving documentation to participating in discussions and developing new initiatives. Here’s how you can get started:

### 1. Participate in Discussions

- Join our #wg-orbit channel via the [OpenSSF Slack channel](https://openssf.slack.com/archives/C08NJTFAL74).

- Attend working group meetings listed on the public calendar.

### 2. Report Issues or Suggest Enhancements

- Use the [GitHub Issues](https://github.com/ossf/wg-orbit/issues) tab to report problems or suggest ideas.
- Follow our issue template to provide clear and detailed information.

### 3. Submit Pull Requests

- Fork the repository.
- Create a feature branch (`git checkout -b feature/your-feature-name`).
- Commit changes (`git commit -m 'Add your message here'`).
- Push your branch (`git push origin feature/your-feature-name`).
- Open a Pull Request (PR) with a detailed description.

### 4. Review Process

- All PRs are reviewed by maintainers.
- Ensure your PR is well-documented and follows project guidelines.
- Be open to feedback and ready to make improvements.

## Recipe Cards

Recipe cards map outcomes to the ORBIT tools and resources needed to achieve them. Each card is a YAML file in the `recipes/` directory.

### Adding or Editing a Card

1. Use an existing card as a template (e.g., [`recipes/ospo-org.yaml`](recipes/ospo-org.yaml)).
2. Create or edit a YAML file in `recipes/`. Each card has these fields:
   - **title** — the outcome this card achieves
   - **outcome** — a short paragraph explaining the goal
   - **audience** — `role` (from the predefined list) and `context`
   - **ingredients** — specifications, standards, or frameworks used
   - **equipment** — tools with `gemaraLayers` (1–7), `gemaraImplementation`, `origin`, and `when`
   - **technique** — how the ingredients and equipment work together
   - **yield** — the artifacts produced
3. Open a Pull Request with your YAML changes.

> **Do not edit files in `docs/recipes/` or `docs/equipment-matrix.md` directly.** These are generated from the YAML source by the CUE renderer.

### Maintainer Setup

Maintainers use [pre-commit](https://pre-commit.com) to auto-render markdown when recipe files change:

```sh
pip install pre-commit
pre-commit install
```

After setup, any commit touching `recipes/` will automatically regenerate the docs.

## Code of Conduct

We are committed to maintaining a welcoming, inclusive, and respectful environment. Please read and follow our [Code of Conduct](https://openssf.org/community/code-of-conduct/) to ensure a positive experience for everyone.

## Community Expectations

- **Be Respectful:** Value each other's ideas and contributions.
- **Be Collaborative:** Work together to solve problems and build new initiatives.
- **Be Open:** Share your knowledge and be open to learning from others.

We’re excited to collaborate with you and appreciate your support in advancing open source cybersecurity!

For any questions or additional guidance, contact us through Slack or during our working group meetings. Let's build a better, more inclusive cybersecurity community together!