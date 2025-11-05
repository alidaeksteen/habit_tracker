# Login / Registration User Stories

## User Story 1: Account Registration
**Title:** Account Registration  
_As a user, I want to register with my name, username, age, and country, so that I can create an account and access the habit tracking features._

**Acceptance Criteria:**
1. User can fill in their name, username, age, and country.  
2. User receives confirmation after successful registration.  
3. Registration details are not saved in browser cache after logout.  

**Priority:** High  
**Story Points:** 3  
**Notes:** Only default credentials allow login after logout.

---

## User Story 2: Account Login
**Title:** Account Login  
_As a user, I want to log in using my username and password, so that I can access my account and track my habits._

**Acceptance Criteria:**
1. User can enter username and password.  
2. Successful login redirects the user to the dashboard.  
3. User cannot log in with previous session credentials; only default credentials work.  

**Priority:** High  
**Story Points:** 3  
**Notes:** Credentials are cleared from browser after logout.

---

## User Story 3: Error Feedback on Login
**Title:** Error Feedback on Login  
_As a user, I want to receive a message if I enter the wrong username or password, so that I know my login attempt was unsuccessful._

**Acceptance Criteria:**
1. Error message displays for incorrect username.  
2. Error message displays for incorrect password.  
3. Messages disappear after user corrects input.  

**Priority:** Medium  
**Story Points:** 2  
**Notes:** Only default username/password allows login.
