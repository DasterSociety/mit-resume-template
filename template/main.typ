#import "@local/mit-resume:0.1.0": entry, mit-resume

#show: mit-resume.with(
  name: "FULL NAME",
  location: "City, ST",
  email: "email@email.com",
  phone: "(555) 555-5555",
  linkedin: "username",
  website: "www.website.com",
)

// No fixed section order. MIT's rule is "list sections in order of importance to
// the employer" — reorder these per application by moving whole `= Heading` blocks.

= Summary
Ph.D. candidate in _Field_ with _N_ years developing _method or technology_ for
_application domain_. Built _the deliverable_ that _quantified result_. Seeking a
_target role_ position applying _two or three core competencies_.

= Education
#entry(
  org: "University Name",
  location: "City, ST",
  title: "Candidate for PhD in [Field]",
  dates: "Expected YYYY",
  note: [Dissertation: _Working title of your dissertation_],
)

// Group skills by category and rename the categories to fit the field. List concrete,
// verifiable tools only — no soft skills, no self-rated proficiency bars.
= Skills
- *Programming:* _languages you write unaided, strongest first_
- *Software:* _tools, instruments or platforms you operate_
- *Languages:* _language_ (native), _language_ (fluent)

// Bullets follow MIT's P-A-R pattern: Project, Action, Result. Strong verb first,
// a metric somewhere, max 2 lines, and each must read on its own. Open with a past-tense
// verb like Developed, Engineered, Led, Designed, Automated — never "Responsible for".
= Experience
#entry(
  org: "Organization Name",
  location: "City, ST",
  title: "Position Title",
  dates: [Mon YYYY -- Mon YYYY],
)[
  - Developed _the deliverable_ using _tools or methods_ to _address the problem_, improving
    _the metric_ by _N_% over _the prior baseline_
  - Led _the project or process_ across _N_ _experiments, sites or teams_, delivering
    _the quantified outcome_ in collaboration with _N_ _collaborators_
]

= Publications and Conferences
- *Lastname, F.*, Coauthor, A., & Senior, B. (2025). Title of the journal article.
  _Journal Name_, 12(3), 145--158.
- Coauthor, A., *Lastname, F.*, & Senior, B. (2024). Title of a second paper.
  _Journal Name_, 8(1), 22--34.
- *Lastname, F.* (2024). _Title of conference talk_. Oral presentation, Conference
  Name, City, Country.
