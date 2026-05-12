<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
    <title>FormFillApp | Professional Registration</title>
    <!-- Google Fonts & Simple Icons via Font Awesome (rich UI/UX) -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: linear-gradient(135deg, #e9f0fc 0%, #d9e4f5 100%);
            font-family: 'Inter', sans-serif;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 2rem 1.5rem;
        }

        /* card container with glassmorphism & rich shadows */
        .form-card {
            max-width: 560px;
            width: 100%;
            background: rgba(255, 255, 255, 0.96);
            backdrop-filter: blur(0px);
            border-radius: 2rem;
            box-shadow: 0 25px 45px -12px rgba(0, 0, 0, 0.25), 0 8px 18px rgba(0, 0, 0, 0.05);
            overflow: hidden;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        .form-card:hover {
            box-shadow: 0 30px 55px -15px rgba(0, 0, 0, 0.3);
        }

        /* header area with brand & illustration */
        .form-header {
            background: #0b2b3f;
            padding: 1.8rem 2rem 1.5rem 2rem;
            color: white;
            text-align: center;
        }

        .brand {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 12px;
            margin-bottom: 12px;
        }

        .brand i {
            font-size: 2.5rem;
            filter: drop-shadow(0 2px 4px rgba(0,0,0,0.2));
        }

        .brand h1 {
            font-size: 1.9rem;
            font-weight: 700;
            letter-spacing: -0.3px;
            background: linear-gradient(120deg, #fff, #c7e9ff);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        .form-header p {
            font-size: 0.9rem;
            opacity: 0.8;
            font-weight: 400;
            margin-top: 6px;
        }

        /* main form area */
        .form-body {
            padding: 2rem 2rem 1.8rem;
        }

        /* enhanced input groups */
        .input-group {
            margin-bottom: 1.6rem;
            position: relative;
        }

        .input-group label {
            display: flex;
            align-items: center;
            gap: 8px;
            font-weight: 600;
            font-size: 0.85rem;
            color: #1e2f3f;
            margin-bottom: 8px;
            letter-spacing: -0.2px;
        }

        .input-group label i {
            color: #2c7da0;
            font-size: 0.9rem;
            width: 20px;
        }

        /* input, select styling */
        .input-group input,
        .input-group select {
            width: 100%;
            padding: 0.9rem 1rem 0.9rem 2.6rem;
            font-size: 1rem;
            font-family: 'Inter', monospace;
            border: 1.5px solid #e2e8f0;
            border-radius: 1.2rem;
            background-color: #ffffff;
            transition: all 0.2s cubic-bezier(0.2, 0.9, 0.4, 1.1);
            outline: none;
            font-weight: 500;
            color: #0a1c2a;
        }

        .input-group select {
            appearance: none;
            background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="%234a6a85" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="6 9 12 15 18 9"></polyline></svg>');
            background-repeat: no-repeat;
            background-position: right 1rem center;
            background-size: 1.1rem;
            padding-right: 2.5rem;
        }

        /* custom icons inside inputs using absolute positioning */
        .input-icon {
            position: absolute;
            left: 1rem;
            bottom: 0.95rem;
            color: #8ba0b5;
            font-size: 1.1rem;
            pointer-events: none;
            transition: color 0.2s;
        }

        /* focus states */
        .input-group input:focus,
        .input-group select:focus {
            border-color: #2c7da0;
            box-shadow: 0 0 0 4px rgba(44, 125, 160, 0.15);
        }

        .input-group input:focus + .input-icon,
        .input-group select:focus ~ .input-icon {
            color: #2c7da0;
        }

        /* specific password strength hint (optional micro-interaction) */
        .password-hint {
            font-size: 0.7rem;
            margin-top: 6px;
            color: #5e7e9c;
            display: flex;
            align-items: center;
            gap: 6px;
        }

        /* register button premium look */
        .registerbtn {
            width: 100%;
            background: linear-gradient(100deg, #0f3b4f 0%, #1f5e7a 100%);
            border: none;
            padding: 1rem;
            font-size: 1.1rem;
            font-weight: 700;
            font-family: 'Inter', sans-serif;
            color: white;
            border-radius: 3rem;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 12px;
            cursor: pointer;
            transition: all 0.25s;
            margin-top: 10px;
            box-shadow: 0 8px 18px rgba(15, 59, 79, 0.25);
            letter-spacing: -0.2px;
        }

        .registerbtn i {
            font-size: 1.2rem;
            transition: transform 0.2s;
        }

        .registerbtn:hover {
            background: linear-gradient(100deg, #0e2e3f, #226a88);
            transform: translateY(-2px);
            box-shadow: 0 14px 26px -8px rgba(15, 59, 79, 0.4);
        }

        .registerbtn:hover i {
            transform: translateX(4px);
        }

        .registerbtn:active {
            transform: translateY(1px);
        }

        /* bottom text & link */
        .bottom-text {
            text-align: center;
            margin-top: 1.8rem;
            font-size: 0.9rem;
            color: #4a627a;
            border-top: 1px solid #eef2f8;
            padding-top: 1.5rem;
        }

        .bottom-text a {
            color: #1f6e8c;
            font-weight: 700;
            text-decoration: none;
            margin-left: 6px;
            transition: color 0.2s;
        }

        .bottom-text a:hover {
            color: #0d435a;
            text-decoration: underline;
        }

        /* rich validation & interactive messages */
        .error-message {
            font-size: 0.75rem;
            margin-top: 6px;
            color: #e25c5c;
            display: flex;
            align-items: center;
            gap: 6px;
            font-weight: 500;
        }

        .success-border {
            border-color: #2bae66 !important;
        }

        /* micro animations */
        @keyframes gentleShake {
            0% { transform: translateX(0); }
            25% { transform: translateX(-5px); }
            75% { transform: translateX(5px); }
            100% { transform: translateX(0); }
        }

        .shake-effect {
            animation: gentleShake 0.3s ease-in-out 0s 1;
        }

        /* floating tooltip style for confirm match */
        .match-status {
            position: absolute;
            right: 12px;
            bottom: 14px;
            font-size: 0.9rem;
            cursor: default;
        }

        /* toggle icon for password visibility - modern */
        .toggle-pwd {
            position: absolute;
            right: 1rem;
            bottom: 0.9rem;
            color: #8ba0b5;
            cursor: pointer;
            font-size: 1rem;
            transition: color 0.2s;
            z-index: 2;
        }

        .toggle-pwd:hover {
            color: #2c7da0;
        }

        /* responsive */
        @media (max-width: 500px) {
            .form-body {
                padding: 1.8rem;
            }
            .brand h1 {
                font-size: 1.5rem;
            }
            .registerbtn {
                font-size: 1rem;
            }
        }

        /* success animation & toast-like */
        .toast-msg {
            position: fixed;
            bottom: 25px;
            left: 50%;
            transform: translateX(-50%) scale(0.9);
            background: #1f3e48;
            color: white;
            padding: 12px 24px;
            border-radius: 60px;
            font-weight: 500;
            font-size: 0.9rem;
            backdrop-filter: blur(8px);
            background: rgba(15, 59, 79, 0.95);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            display: flex;
            align-items: center;
            gap: 10px;
            z-index: 1000;
            opacity: 0;
            transition: opacity 0.2s, transform 0.2s;
            pointer-events: none;
        }
        .toast-msg.show {
            opacity: 1;
            transform: translateX(-50%) scale(1);
        }
    </style>
</head>
<body>

<div class="form-card" id="registrationFormCard">
    <div class="form-header">
        <div class="brand">
            <i class="fas fa-id-card"></i>
            <h1>FormFillApp</h1>
        </div>
        <p>Smart professional onboarding · Secure & seamless</p>
    </div>
    <div class="form-body">
        <!-- enhanced form with rich validation and ux -->
        <form id="professionalForm" action="#" method="post" novalidate>
            <!-- Mobile Number Field (tel) with icon -->
            <div class="input-group" id="mobileGroup">
                <label><i class="fas fa-mobile-alt"></i> Mobile Number</label>
                <input type="tel" id="mobileNumber" placeholder="+91 98765 43210" autocomplete="tel" required>
                <i class="fas fa-phone-alt input-icon"></i>
                <div class="error-message" id="mobileError"></div>
            </div>

            <!-- Professional Course dropdown with rich design -->
            <div class="input-group" id="courseGroup">
                <label><i class="fas fa-graduation-cap"></i> Professional Course</label>
                <select id="courseSelect" required>
                    <option value="" disabled selected>— Choose Your Specialization —</option>
                    <option value="aws">🚀 AWS DevOps Engineering</option>
                    <option value="linux">🐧 Linux System Administration</option>
                    <option value="docker">🐳 Docker & Kubernetes Mastery</option>
                    <option value="terraform">🏗️ Terraform Infrastructure Automation</option>
                </select>
                <i class="fas fa-chevron-down input-icon" style="pointer-events: none; left: auto; right: 1rem; left: unset; color: #9badc0;"></i>
                <div class="error-message" id="courseError"></div>
            </div>

            <!-- Password Field with toggle visibility -->
            <div class="input-group" id="passwordGroup">
                <label><i class="fas fa-lock"></i> Create Secure Password</label>
                <input type="password" id="password" placeholder="Minimum 8 characters" autocomplete="new-password" required>
                <i class="fas fa-eye toggle-pwd" id="togglePassword" data-target="password"></i>
                <i class="fas fa-key input-icon"></i>
                <div class="password-hint"><i class="fas fa-shield-alt"></i> Use 8+ characters with letters & numbers</div>
                <div class="error-message" id="passwordError"></div>
            </div>

            <!-- Confirm Password Field with realtime match indicator -->
            <div class="input-group" id="confirmGroup">
                <label><i class="fas fa-check-circle"></i> Confirm Your Password</label>
                <input type="password" id="confirmPassword" placeholder="Re-enter your password" autocomplete="off" required>
                <i class="fas fa-eye toggle-pwd" id="toggleConfirm" data-target="confirmPassword"></i>
                <i class="fas fa-lock input-icon"></i>
                <div class="error-message" id="confirmError"></div>
            </div>

            <!-- Submit Button with nice icon + micro interaction -->
            <button type="submit" class="registerbtn" id="submitBtn">
                <i class="fas fa-rocket"></i> Create My Account
            </button>

            <div class="bottom-text">
                Already have an account?
                <a href="#" id="signInMock">Sign In Now →</a>
            </div>
        </form>
    </div>
</div>
<div id="toastMessage" class="toast-msg">
    <i class="fas fa-check-circle"></i> <span id="toastText">Account ready!</span>
</div>

<script>
    (function() {
        // DOM elements
        const mobileInput = document.getElementById('mobileNumber');
        const courseSelect = document.getElementById('courseSelect');
        const passwordInput = document.getElementById('password');
        const confirmInput = document.getElementById('confirmPassword');
        const mobileError = document.getElementById('mobileError');
        const courseError = document.getElementById('courseError');
        const passwordError = document.getElementById('passwordError');
        const confirmError = document.getElementById('confirmError');
        const form = document.getElementById('professionalForm');
        const submitBtn = document.getElementById('submitBtn');
        
        // Helper to show toast notifications
        function showToast(message, isError = false) {
            const toastEl = document.getElementById('toastMessage');
            const toastTextSpan = document.getElementById('toastText');
            const iconSpan = toastEl.querySelector('i');
            if(isError) {
                iconSpan.className = 'fas fa-exclamation-triangle';
                toastEl.style.background = 'rgba(180, 60, 50, 0.95)';
            } else {
                iconSpan.className = 'fas fa-check-circle';
                toastEl.style.background = 'rgba(15, 59, 79, 0.95)';
            }
            toastTextSpan.innerText = message;
            toastEl.classList.add('show');
            setTimeout(() => {
                toastEl.classList.remove('show');
                setTimeout(() => {
                    if(!isError) iconSpan.className = 'fas fa-check-circle';
                    else iconSpan.className = 'fas fa-exclamation-triangle';
                    toastEl.style.background = 'rgba(15, 59, 79, 0.95)';
                }, 200);
            }, 2800);
        }
        
        // Helper to remove existing error and shake class
        function clearFieldError(groupId, errorDivId) {
            const group = document.getElementById(groupId);
            const errorDiv = document.getElementById(errorDivId);
            if(errorDiv) errorDiv.innerText = '';
            if(group) {
                const inputField = group.querySelector('input, select');
                if(inputField) inputField.classList.remove('shake-effect');
            }
        }
        
        function setFieldError(groupId, errorDivId, message) {
            const errorDiv = document.getElementById(errorDivId);
            if(errorDiv) errorDiv.innerHTML = `<i class="fas fa-circle-exclamation" style="font-size:0.7rem;"></i> ${message}`;
            const group = document.getElementById(groupId);
            if(group) {
                const inputField = group.querySelector('input, select');
                if(inputField) {
                    inputField.classList.add('shake-effect');
                    setTimeout(() => {
                        if(inputField) inputField.classList.remove('shake-effect');
                    }, 400);
                }
            }
        }
        
        // Real-time mobile validation (indian/international simple demo)
        function validateMobile() {
            const mobile = mobileInput.value.trim();
            if(mobile === "") {
                setFieldError('mobileGroup', 'mobileError', 'Mobile number is required');
                return false;
            }
            const phoneRegex = /^[\+]?[(]?[0-9]{1,4}[)]?[-\s\.]?[(]?[0-9]{4,14}[)]?$/;
            // also ensure at least 8 digits overall
            const digitsOnly = mobile.replace(/[\s\-\(\)\+]/g, '');
            if(!phoneRegex.test(mobile) || digitsOnly.length < 8 || digitsOnly.length > 15) {
                setFieldError('mobileGroup', 'mobileError', 'Enter a valid mobile number (8-15 digits)');
                return false;
            }
            clearFieldError('mobileGroup', 'mobileError');
            return true;
        }
        
        function validateCourse() {
            const selected = courseSelect.value;
            if(!selected || selected === "") {
                setFieldError('courseGroup', 'courseError', 'Please select your professional course');
                return false;
            }
            clearFieldError('courseGroup', 'courseError');
            return true;
        }
        
        function validatePasswordStrength() {
            const pwd = passwordInput.value;
            if(pwd === "") {
                setFieldError('passwordGroup', 'passwordError', 'Password is required');
                return false;
            }
            if(pwd.length < 8) {
                setFieldError('passwordGroup', 'passwordError', 'Password must be at least 8 characters');
                return false;
            }
            // at least one letter and one number for better UX (soft requirement)
            const hasLetter = /[A-Za-z]/.test(pwd);
            const hasNumber = /[0-9]/.test(pwd);
            if(!hasLetter || !hasNumber) {
                setFieldError('passwordGroup', 'passwordError', 'Use mix of letters & numbers for stronger security');
                return false;
            }
            clearFieldError('passwordGroup', 'passwordError');
            return true;
        }
        
        function validateConfirmMatch() {
            const pwd = passwordInput.value;
            const confirm = confirmInput.value;
            if(confirm === "") {
                setFieldError('confirmGroup', 'confirmError', 'Please confirm your password');
                return false;
            }
            if(pwd !== confirm) {
                setFieldError('confirmGroup', 'confirmError', 'Passwords do not match');
                return false;
            }
            clearFieldError('confirmGroup', 'confirmError');
            return true;
        }
        
        // real-time listeners for better ux
        mobileInput.addEventListener('input', () => { validateMobile(); });
        courseSelect.addEventListener('change', () => { validateCourse(); });
        passwordInput.addEventListener('input', () => { 
            validatePasswordStrength(); 
            if(confirmInput.value.length > 0) validateConfirmMatch();
        });
        confirmInput.addEventListener('input', () => { validateConfirmMatch(); });
        
        // Password visibility toggle
        function setupPasswordToggle(toggleId, targetId) {
            const toggleBtn = document.getElementById(toggleId);
            const targetInput = document.getElementById(targetId);
            if(toggleBtn && targetInput) {
                toggleBtn.addEventListener('click', function(e) {
                    e.preventDefault();
                    const type = targetInput.getAttribute('type') === 'password' ? 'text' : 'password';
                    targetInput.setAttribute('type', type);
                    this.classList.toggle('fa-eye-slash');
                    if(this.classList.contains('fa-eye-slash')) {
                        this.classList.remove('fa-eye');
                        this.classList.add('fa-eye-slash');
                    } else {
                        this.classList.remove('fa-eye-slash');
                        this.classList.add('fa-eye');
                    }
                });
            }
        }
        setupPasswordToggle('togglePassword', 'password');
        setupPasswordToggle('toggleConfirm', 'confirmPassword');
        
        // additional styled micro-interaction: add autocomplete demo message
        function showSuccessFeedback() {
            // collect field values for demo preview
            const mobileVal = mobileInput.value.trim();
            const courseText = courseSelect.options[courseSelect.selectedIndex]?.text || 'Not selected';
            // mock account creation success - rich ux toast
            showToast(`Welcome to FormFillApp! ${mobileVal} registered with ${courseText}`, false);
            // we could do a console log, prevent default submit handling but also simulate
        }
        
        // Global submit handler with full validation and rich user feedback
        form.addEventListener('submit', async (e) => {
            e.preventDefault();
            
            const isMobileValid = validateMobile();
            const isCourseValid = validateCourse();
            const isPasswordValid = validatePasswordStrength();
            const isConfirmValid = validateConfirmMatch();
            
            if(isMobileValid && isCourseValid && isPasswordValid && isConfirmValid) {
                // all good: simulate form submission to FormFillApp professional endpoint
                // get selected course value display
                const selectedOption = courseSelect.options[courseSelect.selectedIndex];
                const coursePretty = selectedOption ? selectedOption.textContent : '';
                const mobilePretty = mobileInput.value.trim();
                // Success toast with detailed message
                showToast(`🎉 Account created! ${coursePretty} track ready.`, false);
                // optional: reset form UI subtle animation
                submitBtn.innerHTML = '<i class="fas fa-spinner fa-pulse"></i> Processing...';
                submitBtn.disabled = true;
                // simulate API delay (just for UX)
                setTimeout(() => {
                    submitBtn.innerHTML = '<i class="fas fa-check-circle"></i> Account Created!';
                    setTimeout(() => {
                        submitBtn.innerHTML = '<i class="fas fa-rocket"></i> Create My Account';
                        submitBtn.disabled = false;
                        // optional: do not reset actual fields to maintain data
                        // For professional feel, you can also trigger fake success redirect message
                        const toastMsg = document.getElementById('toastMessage');
                        if(toastMsg) {
                            toastMsg.style.background = "rgba(43, 174, 102, 0.95)";
                            setTimeout(() => {
                                toastMsg.style.background = "rgba(15, 59, 79, 0.95)";
                            }, 2000);
                        }
                    }, 1200);
                }, 800);
                // Here we would normally send data to FormFillApp backend. For demo, we just show success.
                // Additional: The bottom Sign In Now link also triggers demo message.
            } else {
                // show general error toast
                showToast('Please fix errors before creating account', true);
                // scroll to first invalid field gently
                const firstError = document.querySelector('.error-message:not(:empty)');
                if(firstError) {
                    firstError.scrollIntoView({ behavior: 'smooth', block: 'center' });
                }
            }
        });
        
        // Sign In Now mock interaction: display professional message
        const signLink = document.getElementById('signInMock');
        if(signLink) {
            signLink.addEventListener('click', (e) => {
                e.preventDefault();
                showToast('🔐 Sign in panel ready — Demo flow for FormFillApp', false);
            });
        }
        
        // optional extra: floating label effect? Already interactive. Add dynamic placeholder guiding
        // tweak visual for mobile number placeholder format guide
        mobileInput.addEventListener('focus', () => {
            if(mobileInput.value === "") mobileInput.placeholder = "e.g., +1 555 123 4567";
        });
        mobileInput.addEventListener('blur', () => {
            mobileInput.placeholder = "+91 98765 43210";
        });
        
        // pre-default styles for enhanced security checkmark, no errors at start
        // final: Hover & premium aesthetics integrated
        console.log("FormFillApp Professional UI/UX Ready");
    })();
</script>
</body>
</html>
