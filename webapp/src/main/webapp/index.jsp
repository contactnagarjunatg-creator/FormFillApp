<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>FormFillApp | Professional Onboarding Suite</title>
    <!-- Google Fonts + Font Awesome 6 (sharp & clean) -->
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: radial-gradient(circle at 10% 30%, #0a0f1e, #05070f);
            font-family: 'Space Grotesk', sans-serif;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 1.5rem;
            position: relative;
            overflow-x: hidden;
        }

        /* animated background orbs */
        body::before {
            content: '';
            position: absolute;
            width: 100%;
            height: 100%;
            background: radial-gradient(circle at 70% 20%, rgba(0, 255, 196, 0.08), transparent 60%);
            pointer-events: none;
        }
        body::after {
            content: '';
            position: absolute;
            width: 100%;
            height: 100%;
            background: radial-gradient(circle at 20% 80%, rgba(100, 108, 255, 0.08), transparent 70%);
            pointer-events: none;
        }

        /* main glass panel - completely different layout (split style) */
        .register-hub {
            max-width: 1300px;
            width: 100%;
            background: rgba(15, 20, 35, 0.55);
            backdrop-filter: blur(16px);
            border-radius: 3rem;
            border: 1px solid rgba(255, 255, 255, 0.12);
            box-shadow: 0 30px 60px rgba(0, 0, 0, 0.5), 0 0 0 1px rgba(255, 255, 255, 0.05) inset;
            overflow: hidden;
            transition: all 0.3s ease;
        }

        /* inner flex layout: left side branding + right form */
        .dashboard-grid {
            display: flex;
            flex-wrap: wrap;
        }
        /* left panel - modern brand story */
        .brand-panel {
            flex: 1.2;
            background: linear-gradient(145deg, #0b1022, #060915);
            padding: 3rem 2.5rem;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            border-right: 1px solid rgba(255,255,255,0.05);
        }
        .badge-icon {
            display: inline-flex;
            align-items: center;
            gap: 12px;
            background: rgba(0, 230, 200, 0.12);
            padding: 0.5rem 1.2rem;
            border-radius: 60px;
            width: fit-content;
            backdrop-filter: blur(4px);
            border: 1px solid rgba(0, 255, 200, 0.2);
            margin-bottom: 2rem;
        }
        .badge-icon i {
            font-size: 1.3rem;
            color: #0ef;
            text-shadow: 0 0 6px #0ef;
        }
        .badge-icon span {
            font-weight: 500;
            font-size: 0.8rem;
            letter-spacing: 1px;
            color: #b9f3ff;
        }
        .brand-panel h2 {
            font-size: 2.8rem;
            font-weight: 700;
            line-height: 1.2;
            background: linear-gradient(135deg, #ffffff, #a0f0ff);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            margin-bottom: 1rem;
        }
        .brand-panel .tagline {
            color: #9aa4bf;
            font-size: 1rem;
            line-height: 1.5;
            margin-bottom: 2.5rem;
            max-width: 90%;
        }
        .feature-list {
            display: flex;
            flex-direction: column;
            gap: 1rem;
            margin: 2rem 0;
        }
        .feature-item {
            display: flex;
            align-items: center;
            gap: 12px;
            color: #ccd6f6;
            font-size: 0.9rem;
            font-weight: 400;
        }
        .feature-item i {
            width: 26px;
            color: #2effe0;
            font-size: 1.1rem;
        }
        .trust-badge {
            margin-top: 2rem;
            display: flex;
            gap: 20px;
            align-items: center;
            flex-wrap: wrap;
        }
        .trust-badge span {
            font-size: 0.7rem;
            color: #7e8bb2;
            display: flex;
            align-items: center;
            gap: 6px;
        }

        /* right side — form container fresh look */
        .form-panel {
            flex: 1.5;
            padding: 2.5rem 2.8rem;
            background: rgba(8, 12, 24, 0.6);
        }

        .form-header-mini {
            margin-bottom: 2rem;
        }
        .form-header-mini h3 {
            font-size: 1.8rem;
            font-weight: 600;
            color: white;
            letter-spacing: -0.3px;
        }
        .form-header-mini p {
            color: #8f9bb3;
            font-size: 0.85rem;
            margin-top: 6px;
        }

        /* modern input groups (floating style) */
        .neo-input-group {
            margin-bottom: 1.5rem;
            position: relative;
        }
        .neo-input-group input,
        .neo-input-group select {
            width: 100%;
            background: rgba(20, 28, 44, 0.8);
            border: 1.2px solid rgba(255, 255, 255, 0.08);
            border-radius: 1.4rem;
            padding: 1rem 1rem 1rem 3rem;
            font-size: 0.95rem;
            font-family: 'Space Grotesk', monospace;
            color: #f0f3fa;
            transition: all 0.25s;
            outline: none;
            font-weight: 500;
            backdrop-filter: blur(2px);
        }
        .neo-input-group select {
            appearance: none;
            cursor: pointer;
            background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="%238ca0c0" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="6 9 12 15 18 9"></polyline></svg>');
            background-repeat: no-repeat;
            background-position: right 1.2rem center;
            background-size: 1rem;
            padding-right: 2.8rem;
        }
        .neo-input-group input:focus,
        .neo-input-group select:focus {
            border-color: #2effe0;
            box-shadow: 0 0 0 3px rgba(46, 255, 224, 0.2);
            background: rgba(18, 28, 46, 0.95);
        }
        .input-icon-left {
            position: absolute;
            left: 1.1rem;
            bottom: 1rem;
            color: #6f7c9b;
            font-size: 1.1rem;
            pointer-events: none;
            transition: color 0.2s;
        }
        .neo-input-group input:focus + .input-icon-left,
        .neo-input-group select:focus ~ .input-icon-left {
            color: #2effe0;
        }
        .toggle-visibility {
            position: absolute;
            right: 1.1rem;
            bottom: 1rem;
            color: #8a99bb;
            cursor: pointer;
            z-index: 2;
            transition: color 0.2s;
        }
        .toggle-visibility:hover {
            color: #2effe0;
        }

        /* strength meter & match line */
        .strength-meter {
            display: flex;
            gap: 6px;
            margin-top: 8px;
        }
        .strength-segment {
            height: 4px;
            flex: 1;
            background: #2a3348;
            border-radius: 6px;
            transition: all 0.2s;
        }
        .strength-segment.active {
            background: linear-gradient(90deg, #2effe0, #0bc5b0);
        }
        .helper-text {
            font-size: 0.7rem;
            color: #8c9bb5;
            margin-top: 6px;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        /* error styles */
        .error-text {
            font-size: 0.7rem;
            color: #ff7b72;
            margin-top: 6px;
            margin-left: 12px;
            display: flex;
            align-items: center;
            gap: 5px;
        }

        /* cta button futuristic */
        .cta-glow {
            width: 100%;
            background: linear-gradient(95deg, #0ef0d0, #0a7c9e);
            border: none;
            padding: 1rem;
            border-radius: 2.2rem;
            font-weight: 700;
            font-size: 1rem;
            font-family: 'Space Grotesk', sans-serif;
            color: #010101;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 12px;
            cursor: pointer;
            transition: all 0.3s;
            margin-top: 0.6rem;
            letter-spacing: -0.2px;
            box-shadow: 0 8px 20px rgba(0, 230, 200, 0.2);
        }
        .cta-glow i {
            font-size: 1.1rem;
            transition: transform 0.2s;
        }
        .cta-glow:hover {
            transform: translateY(-3px);
            box-shadow: 0 20px 30px -12px rgba(0, 230, 200, 0.4);
            background: linear-gradient(95deg, #2effe0, #1699b3);
        }
        .signin-link {
            text-align: center;
            margin-top: 2rem;
            font-size: 0.85rem;
            color: #96a2c2;
        }
        .signin-link a {
            color: #2effe0;
            text-decoration: none;
            font-weight: 600;
            border-bottom: 1px dashed rgba(46, 255, 224, 0.5);
        }

        /* responsive */
        @media (max-width: 900px) {
            .dashboard-grid {
                flex-direction: column;
            }
            .brand-panel {
                border-right: none;
                border-bottom: 1px solid rgba(255,255,255,0.05);
                padding: 2rem;
            }
            .form-panel {
                padding: 2rem;
            }
            .brand-panel h2 {
                font-size: 2rem;
            }
        }

        /* toast notif modern */
        .notification-toast {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background: rgba(10, 20, 28, 0.9);
            backdrop-filter: blur(12px);
            border-left: 4px solid #2effe0;
            border-radius: 1rem;
            padding: 12px 20px;
            display: flex;
            align-items: center;
            gap: 12px;
            font-family: 'Space Grotesk', sans-serif;
            font-weight: 500;
            color: white;
            box-shadow: 0 12px 25px rgba(0,0,0,0.3);
            transform: translateX(400px);
            transition: transform 0.3s cubic-bezier(0.2, 0.9, 0.4, 1.1);
            z-index: 1000;
        }
        .notification-toast.show {
            transform: translateX(0);
        }
    </style>
</head>
<body>
<div class="register-hub">
    <div class="dashboard-grid">
        <!-- left panel (completely different branding) -->
        <div class="brand-panel">
            <div>
                <div class="badge-icon">
                    <i class="fas fa-layer-group"></i>
                    <span>FORMFILLAPP v3.0</span>
                </div>
                <h2>Build your<br>professional edge.</h2>
                <div class="tagline">Join the next-gen ecosystem for DevOps & Cloud architects. Secure, AI‑ready, and streamlined.</div>
                <div class="feature-list">
                    <div class="feature-item"><i class="fas fa-cloud-upload-alt"></i> Auto-fill & smart parsing</div>
                    <div class="feature-item"><i class="fas fa-shield-alt"></i> 256‑bit encrypted profiles</div>
                    <div class="feature-item"><i class="fas fa-chart-line"></i> Career track insights</div>
                    <div class="feature-item"><i class="fas fa-globe"></i> Global hiring partner network</div>
                </div>
            </div>
            <div class="trust-badge">
                <span><i class="fas fa-check-circle"></i> 14-day trial</span>
                <span><i class="fas fa-clock"></i> Instant verification</span>
                <span><i class="fas fa-headset"></i> 24/7 priority support</span>
            </div>
        </div>

        <!-- right side: dynamic registration form (fully restructured ui/ux) -->
        <div class="form-panel">
            <div class="form-header-mini">
                <h3>Create account</h3>
                <p>Start your learning journey in 2 minutes</p>
            </div>

            <form id="modernRegisterForm" action="#" method="post" novalidate>
                <!-- mobile with country emoji style -->
                <div class="neo-input-group" id="mobileGroupNew">
                    <input type="tel" id="mobileModern" placeholder="Mobile number" autocomplete="tel" required>
                    <i class="fas fa-mobile-alt input-icon-left"></i>
                    <div class="error-text" id="mobileErrorNew"></div>
                </div>

                <!-- professional course dropdown with enriched options -->
                <div class="neo-input-group" id="courseGroupNew">
                    <select id="courseModern" required>
                        <option value="" disabled selected>— Select specialization —</option>
                        <option value="aws">☁️ AWS DevOps Engineering</option>
                        <option value="linux">🐧 Linux System Administration</option>
                        <option value="docker">🐳 Docker & Kubernetes Mastery</option>
                        <option value="terraform">🏗️ Terraform Infrastructure Automation</option>
                    </select>
                    <i class="fas fa-graduation-cap input-icon-left"></i>
                    <div class="error-text" id="courseErrorNew"></div>
                </div>

                <!-- password field with strength bar -->
                <div class="neo-input-group" id="pwdGroupNew">
                    <input type="password" id="passwordModern" placeholder="Secure password" autocomplete="new-password" required>
                    <i class="fas fa-lock input-icon-left"></i>
                    <i class="fas fa-eye toggle-visibility" id="togglePwdModern"></i>
                    <div class="strength-meter" id="strengthMeter">
                        <div class="strength-segment"></div>
                        <div class="strength-segment"></div>
                        <div class="strength-segment"></div>
                    </div>
                    <div class="helper-text"><i class="fas fa-info-circle"></i> 8+ characters, letters & numbers</div>
                    <div class="error-text" id="passwordErrorNew"></div>
                </div>

                <!-- confirm password -->
                <div class="neo-input-group" id="confirmGroupNew">
                    <input type="password" id="confirmModern" placeholder="Confirm password" autocomplete="off" required>
                    <i class="fas fa-shield-alt input-icon-left"></i>
                    <i class="fas fa-eye toggle-visibility" id="toggleConfirmModern"></i>
                    <div class="error-text" id="confirmErrorNew"></div>
                </div>

                <button type="submit" class="cta-glow" id="submitModernBtn">
                    <i class="fas fa-arrow-right-to-bracket"></i> Launch my workspace
                </button>

                <div class="signin-link">
                    Already registered? <a href="#" id="signinModernLink">Sign in →</a>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- toast container -->
<div id="modernToast" class="notification-toast">
    <i class="fas fa-sparkles"></i>
    <span id="toastMsgText">Welcome!</span>
</div>

<script>
    (function() {
        // DOM elements (new IDs)
        const mobileInput = document.getElementById('mobileModern');
        const courseSelect = document.getElementById('courseModern');
        const passwordInput = document.getElementById('passwordModern');
        const confirmInput = document.getElementById('confirmModern');
        const mobileError = document.getElementById('mobileErrorNew');
        const courseError = document.getElementById('courseErrorNew');
        const passwordError = document.getElementById('passwordErrorNew');
        const confirmError = document.getElementById('confirmErrorNew');
        const form = document.getElementById('modernRegisterForm');
        const submitBtn = document.getElementById('submitModernBtn');
        const strengthSegments = document.querySelectorAll('#strengthMeter .strength-segment');

        // toggle visibility for both pass fields
        const togglePwd = document.getElementById('togglePwdModern');
        const toggleConfirm = document.getElementById('toggleConfirmModern');

        function togglePasswordVisibility(inputField, toggleIcon) {
            if(inputField.type === 'password') {
                inputField.type = 'text';
                toggleIcon.classList.remove('fa-eye');
                toggleIcon.classList.add('fa-eye-slash');
            } else {
                inputField.type = 'password';
                toggleIcon.classList.remove('fa-eye-slash');
                toggleIcon.classList.add('fa-eye');
            }
        }
        if(togglePwd && passwordInput) {
            togglePwd.addEventListener('click', () => togglePasswordVisibility(passwordInput, togglePwd));
        }
        if(toggleConfirm && confirmInput) {
            toggleConfirm.addEventListener('click', () => togglePasswordVisibility(confirmInput, toggleConfirm));
        }

        // strength checker (ux focused)
        function evaluatePasswordStrength(pwd) {
            let score = 0;
            if(pwd.length >= 8) score++;
            if(/[A-Za-z]/.test(pwd) && /[0-9]/.test(pwd)) score++;
            if(/[^A-Za-z0-9]/.test(pwd)) score = Math.min(score+1, 3);
            if(pwd.length >= 12) score = Math.min(score+1, 3);
            return Math.min(score, 3);
        }

        function updateStrengthMeter(pwd) {
            const strength = evaluatePasswordStrength(pwd);
            strengthSegments.forEach((seg, idx) => {
                if(idx < strength) seg.classList.add('active');
                else seg.classList.remove('active');
            });
        }

        // validation functions
        function validateMobileField() {
            const mobile = mobileInput.value.trim();
            if(!mobile) {
                mobileError.innerHTML = '<i class="fas fa-exclamation-triangle"></i> Mobile number required';
                return false;
            }
            const digits = mobile.replace(/[\s\-\(\)\+]/g, '');
            if(digits.length < 8 || digits.length > 15 || !/^\d+$/.test(digits)) {
                mobileError.innerHTML = '<i class="fas fa-exclamation-triangle"></i> Valid mobile number (8-15 digits)';
                return false;
            }
            mobileError.innerHTML = '';
            return true;
        }

        function validateCourseField() {
            const val = courseSelect.value;
            if(!val) {
                courseError.innerHTML = '<i class="fas fa-exclamation-triangle"></i> Please pick a professional course';
                return false;
            }
            courseError.innerHTML = '';
            return true;
        }

        function validatePasswordField() {
            const pwd = passwordInput.value;
            if(!pwd) {
                passwordError.innerHTML = '<i class="fas fa-exclamation-triangle"></i> Create a password';
                return false;
            }
            if(pwd.length < 8) {
                passwordError.innerHTML = '<i class="fas fa-exclamation-triangle"></i> Minimum 8 characters required';
                return false;
            }
            const hasLetter = /[A-Za-z]/.test(pwd);
            const hasNum = /[0-9]/.test(pwd);
            if(!hasLetter || !hasNum) {
                passwordError.innerHTML = '<i class="fas fa-exclamation-triangle"></i> Combine letters & numbers';
                return false;
            }
            passwordError.innerHTML = '';
            updateStrengthMeter(pwd);
            return true;
        }

        function validateConfirmField() {
            const pwd = passwordInput.value;
            const confirm = confirmInput.value;
            if(!confirm) {
                confirmError.innerHTML = '<i class="fas fa-exclamation-triangle"></i> Please confirm your password';
                return false;
            }
            if(pwd !== confirm) {
                confirmError.innerHTML = '<i class="fas fa-exclamation-triangle"></i> Passwords do not match';
                return false;
            }
            confirmError.innerHTML = '';
            return true;
        }

        // realtime listeners
        mobileInput.addEventListener('input', validateMobileField);
        courseSelect.addEventListener('change', validateCourseField);
        passwordInput.addEventListener('input', () => {
            validatePasswordField();
            if(confirmInput.value.length > 0) validateConfirmField();
        });
        confirmInput.addEventListener('input', validateConfirmField);

        // toast function
        function showToastMessage(message, isError = false) {
            const toastEl = document.getElementById('modernToast');
            const toastSpan = document.getElementById('toastMsgText');
            const iconEl = toastEl.querySelector('i');
            if(isError) {
                iconEl.className = 'fas fa-circle-exclamation';
                toastEl.style.borderLeftColor = '#ff7b72';
            } else {
                iconEl.className = 'fas fa-sparkles';
                toastEl.style.borderLeftColor = '#2effe0';
            }
            toastSpan.innerText = message;
            toastEl.classList.add('show');
            setTimeout(() => {
                toastEl.classList.remove('show');
            }, 3000);
        }

        // submit with rich feedback
        form.addEventListener('submit', (e) => {
            e.preventDefault();
            const isMobileOk = validateMobileField();
            const isCourseOk = validateCourseField();
            const isPwdOk = validatePasswordField();
            const isConfirmOk = validateConfirmField();

            if(isMobileOk && isCourseOk && isPwdOk && isConfirmOk) {
                const selectedCourse = courseSelect.options[courseSelect.selectedIndex]?.text || 'Professional Course';
                const mobileDisplay = mobileInput.value.trim();
                // success diff UI: cool loading state on button
                const originalBtnContent = submitBtn.innerHTML;
                submitBtn.innerHTML = '<i class="fas fa-spinner fa-pulse"></i> Securing workspace...';
                submitBtn.disabled = true;
                setTimeout(() => {
                    showToastMessage(`✨ Welcome aboard! ${selectedCourse} track unlocked for ${mobileDisplay}`, false);
                    submitBtn.innerHTML = '<i class="fas fa-check-circle"></i> Workspace ready!';
                    setTimeout(() => {
                        submitBtn.innerHTML = originalBtnContent;
                        submitBtn.disabled = false;
                        // optional: reset form? no, just keep data
                    }, 1800);
                }, 900);
            } else {
                showToastMessage(`Please complete all fields correctly`, true);
                // scroll to first error element
                const firstErrorField = document.querySelector('.error-text:not(:empty)');
                if(firstErrorField) firstErrorField.scrollIntoView({ behavior: 'smooth', block: 'center' });
            }
        });

        // sign in mock modern
        const signinMock = document.getElementById('signinModernLink');
        if(signinMock) {
            signinMock.addEventListener('click', (e) => {
                e.preventDefault();
                showToastMessage(`🔐 Sign-in portal ready — welcome back to FormFillApp`, false);
            });
        }

        // initial strength update
        updateStrengthMeter('');
        // add minor placeholder effect for mobile
        mobileInput.addEventListener('focus', () => {
            if(!mobileInput.value) mobileInput.placeholder = "+1 234 567 8900";
        });
        mobileInput.addEventListener('blur', () => {
            mobileInput.placeholder = "Mobile number";
        });
    })();
</script>
</body>
</html>
