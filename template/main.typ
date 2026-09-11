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
  org: "Massachusetts Institute of Technology (MIT)",
  location: "Cambridge, MA",
  title: "Candidate for PhD in Urban Political Economy and Governance",
  dates: "2006",
  note: [Dissertation: Out of Control? Local Democracy Failure and Fiscal Control Boards],
)

= Skills
- *Programming:* Python, Julia, Java, R, SQL, JavaScript
- *Software:* LabView, COMSOL, ImageJ
- *Languages:* Spanish (native), English (fluent)

// Bullets follow MIT's P-A-R pattern: Project, Action, Result. Strong verb first,
// a metric somewhere, max 2 lines, and each must read on its own. The two below are
// MIT's own verbatim examples — keep them as the standard to match.
= Experience
#entry(
  org: "Impromec SA",
  location: "Cochabamba, Bolivia",
  title: "Project Engineer",
  dates: [Nov 2011 -- Jan 2012],
)[
  - Developed an innovative method to quantify 3D growth plate orientation in the
    proximal femur using MIMICS and MATLAB, in collaboration with 2 orthopedic
    surgeons from the University of Oxford
  - Engineered recombinant orthoreovirus expressing auto-cleaved p24 capsid protein
    of HIV for vaccine development targeting gut-associated lymphoid tissue reservoirs
]

= Publications and Conferences
- *Lastname, F.*, Coauthor, A., & Senior, B. (2025). Title of the journal article.
  _Journal Name_, 12(3), 145--158.
- Coauthor, A., *Lastname, F.*, & Senior, B. (2024). Title of a second paper.
  _Journal Name_, 8(1), 22--34.
- *Lastname, F.* (2024). _Title of conference talk_. Oral presentation, Conference
  Name, City, Country.
