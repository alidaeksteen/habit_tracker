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

# Homepage User Stories

## User Story 1: View Welcome Message
**Title:** View Welcome Message  
_As a user, I want to see a personalized welcome message with my name on the homepage, so that I feel recognized and can confirm I am logged into the correct account._

**Acceptance Criteria:**
1. Homepage displays a welcome message with the user's name.  
2. Message updates for different users.  
3. Message disappears on logout.  

**Priority:** Medium  
**Story Points:** 2  

---

## User Story 2: Display Weekly Progress
**Title:** Display Weekly Progress  
_As a user, I want to see my daily progress for each habit on the homepage, so that I can easily monitor my progress._

**Acceptance Criteria:**
1. Display daily progress for each habit.  
2. Completed days are visually marked.  
3. Users can see weekly trends.  

**Priority:** High  
**Story Points:** 3  

---

## User Story 3: View Completed Habits
**Title:** View Completed Habits  
_As a user, I want to see a section for completed habits on the homepage, so that I can track what I have already achieved._

**Acceptance Criteria:**
1. Completed habits are listed separately.  
2. Users can expand/collapse section.  
3. Section updates dynamically.  

**Priority:** Medium  
**Story Points:** 2

# Menu User Stories

## User Story 1: Access Menu Options
**Title:** Access Menu Options  
_As a user, I want to access a menu with options for configuring my habits, viewing reports, editing my profile, and signing out, so that I can easily navigate the app._

**Acceptance Criteria:**
1. Menu displays all options clearly.  
2. Options navigate to correct screens.  

**Priority:** High  
**Story Points:** 3  

---

## User Story 2: Navigate to Profile
**Title:** Navigate to Profile  
_As a user, I want to access the profile page from the menu, so that I can view and edit my information._

**Acceptance Criteria:**
1. Menu option opens profile page.  
2. User can edit personal information from profile page.  

**Priority:** High  
**Story Points:** 2  

---

## User Story 3: Navigate to Habits Page
**Title:** Navigate to Habits Page  
_As a user, I want to access the habits page from the menu, so that I can configure and manage my habits._

**Acceptance Criteria:**
1. Menu option opens habits page.  
2. Existing habits are visible.  

**Priority:** High  
**Story Points:** 2  

---

## User Story 4: Sign Out from Menu
**Title:** Sign Out from Menu  
_As a user, I want to sign out using the menu, so that I can securely log out._

**Acceptance Criteria:**
1. Menu option logs the user out.  
2. User is redirected to login screen.  

**Priority:** High  
**Story Points:** 2

# Profile Page User Stories

## User Story 1: View Personal Information
**Title:** View Personal Information  
_As a user, I want to view my saved name, username, age, and country on my profile page, so that I can see the details I provided during registration._

**Acceptance Criteria:**
1. Profile page displays all registration details.  
2. Information is read-only until user selects edit.  

**Priority:** Medium  
**Story Points:** 2  

---

## User Story 2: Edit Personal Information
**Title:** Edit Personal Information  
_As a user, I want to update my name, username, age, and country on my profile page, so that I can keep my information up to date._

**Acceptance Criteria:**
1. Edit option allows modifying fields.  
2. Updates validate input correctly.  

**Priority:** High  
**Story Points:** 3  

---

## User Story 3: Save Updated Information
**Title:** Save Updated Information  
_As a user, I want the changes I make to my profile to be saved, so that my updated details are reflected throughout the app._

**Acceptance Criteria:**
1. Changes persist in the database.  
2. Header displays updated name.  

**Priority:** High  
**Story Points:** 2  

# Habits Page User Stories

## User Story 1: Add a New Habit
**Title:** Add a New Habit  
_As a user, I want to add new habits on the details configuration page, so that I can manage and update my habits as needed._

**Acceptance Criteria:**
1. User can enter habit name and details.  
2. Habit appears immediately on the habits list.  

**Priority:** High  
**Story Points:** 3  

---

## User Story 2: Delete a Habit
**Title:** Delete a Habit  
_As a user, I want to delete existing habits, so that I can keep my habits up to date._

**Acceptance Criteria:**
1. User can select and delete habits.  
2. Deleted habits are removed from all views.  

**Priority:** Medium  
**Story Points:** 2  

---

## User Story 3: Personalize a Habit with Color
**Title:** Personalize a Habit with Color  
_As a user, I want to assign a specific color to each habit, so that it is personal to me._

**Acceptance Criteria:**
1. User can pick a color for each habit.  
2. Colors display consistently across the app.  

**Priority:** Medium  
**Story Points:** 2

# Reports Page User Stories

## User Story 1: View Weekly Reports
**Title:** View Weekly Reports  
_As a user, I want to see a report of my weekly habit progress, so that I can understand how well I am maintaining my habits._

**Acceptance Criteria:**
1. Weekly report summarizes habit completion.  
2. Report updates dynamically as habits are tracked.  

**Priority:** High  
**Story Points:** 3  

---

## User Story 2: Visualize Completed Habits
**Title:** Visualize Completed Habits  
_As a user, I want to see a chart of completed habits for each day, so that I can quickly identify trends in my progress._

**Acceptance Criteria:**
1. Chart shows completion per day.  
2. Users can distinguish completed vs incomplete habits.  

**Priority:** Medium  
**Story Points:** 2  

---

## User Story 3: View All Habits
**Title:** View All Habits  
_As a user, I want to see both completed and incomplete habits in my report, so that I have a comprehensive view of my habit tracking performance._

**Acceptance Criteria:**
1. Report lists all habits.  
2. Completed habits are visually marked.  

**Priority:** Medium  
**Story Points:** 2

# Notifications Page User Stories

## User Story 1: Enable/Disable Notifications
**Title:** Enable/Disable Notifications  
_As a user, I want to enable or disable notifications for the app, so that I can choose whether or not to receive reminders._

**Acceptance Criteria:**
1. Toggle switch enables/disables notifications.  
2. Settings persist across sessions.  

**Priority:** Medium  
**Story Points:** 2  

---

## User Story 2: Add Habits for Notifications
**Title:** Add Habits for Notifications  
_As a user, I want to select specific habits to receive notifications for, so that I only get reminders for active habits._

**Acceptance Criteria:**
1. Users can select/deselect habits for notifications.  
2. Only selected habits trigger notifications.  

**Priority:** Medium  
**Story Points:** 2  

---

## User Story 3: Set Notification Times
**Title:** Set Notification Times  
_As a user, I want to receive notifications three times a day for selected habits, so that I get timely reminders._

**Acceptance Criteria:**
1. User can set morning, afternoon, and evening notifications.  
2. Notifications fire at the correct times.  

**Priority:** Medium  
**Story Points:** 2


