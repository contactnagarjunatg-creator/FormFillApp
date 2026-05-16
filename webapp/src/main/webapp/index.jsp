<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
    <title>TCS FormFillApp | Enterprise Registration Suite</title>
    <!-- Google Fonts + Font Awesome -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- Lottie Web for subtle animations (lightweight) -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lottie-web/5.12.2/lottie.min.js"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: linear-gradient(145deg, #eef2f9 0%, #e0e8f2 100%);
            font-family: 'Inter', sans-serif;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 1.5rem;
            position: relative;
            overflow-x: hidden;
        }

        /* animated gradient background */
        body::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: radial-gradient(circle at 20% 40%, rgba(0, 110, 230, 0.08), transparent 70%);
            animation: slowShift 18s infinite alternate;
            pointer-events: none;
        }

        @keyframes slowShift {
            0% { opacity: 0.4; transform: scale(1);}
            100% { opacity: 0.8; transform: scale(1.05);}
        }

        /* main card glassmorphism TCS theme */
        .tcs-card {
            max-width: 600px;
            width: 100%;
            background: rgba(255, 255, 255, 0.97);
            border-radius: 2.5rem;
            box-shadow: 0 25px 45px -12px rgba(0, 40, 80, 0.35), 0 8px 18px rgba(0,0,0,0.05);
            overflow: hidden;
            backdrop-filter: blur(1px);
            transition: transform 0.3s ease, box-shadow 0.3s;
            animation: floatIn 0.6s cubic-bezier(0.2, 0.9, 0.4, 1.1);
        }

        @keyframes floatIn {
            from {
                opacity: 0;
                transform: translateY(30px) scale(0.97);
            }
            to {
                opacity: 1;
                transform: translateY(0) scale(1);
            }
        }

        .tcs-card:hover {
            box-shadow: 0 32px 60px -16px rgba(0, 79, 132, 0.4);
        }

        /* header with TCS brand and logo */
        .tcs-header {
            background: linear-gradient(120deg, #0c2b4b 0%, #0a3b62 100%);
            padding: 1.6rem 2rem;
            color: white;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 1rem;
            flex-wrap: wrap;
            border-bottom: 3px solid #fdb81e;
        }

        .logo-area {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .tcs-logo-svg {
            width: 52px;
            height: 52px;
            filter: drop-shadow(0 4px 6px rgba(0,0,0,0.2));
            animation: gentlePulse 2s infinite ease;
        }

        @keyframes gentlePulse {
            0% { transform: scale(1); opacity: 1;}
            50% { transform: scale(1.03); opacity: 0.95;}
            100% { transform: scale(1); opacity: 1;}
        }

        .brand-text h2 {
            font-size: 1.8rem;
            font-weight: 800;
            letter-spacing: -0.5px;
            background: linear-gradient(135deg, #fff, #ffdd99);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }
        .brand-text p {
            font-size: 0.7rem;
            opacity: 0.85;
            font-weight: 500;
        }

        .animation-badge {
            background: rgba(255,255,240,0.15);
            border-radius: 60px;
            padding: 6px 12px;
            font-size: 0.7rem;
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 8px;
        }
        .lottie-icon {
            width: 28px;
            height: 28px;
        }

        /* form body */
        .tcs-body {
            padding: 2rem 2rem 1.8rem;
        }

        .input-group {
            margin-bottom: 1.5rem;
            position: relative;
        }

        .input-group label {
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 0.8rem;
            font-weight: 700;
            color: #1e3b5c;
            margin-bottom: 8px;
            letter-spacing: -0.2px;
        }

        .input-group label i {
            color: #f09c2e;
            font-size: 0.9rem;
        }

        .input-group input,
        .input-group select {
            width: 100%;
            padding: 0.9rem 1rem 0.9rem 2.6rem;
            font-size: 0.95rem;
            font-family: 'Inter', monospace;
            border: 1.5px solid #e2e8f0;
            border-radius: 1.2rem;
            background: white;
            transition: all 0.25s;
            outline: none;
            font-weight: 500;
            color: #0a2540;
        }

        .input-group select {
            appearance: none;
            background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="%23365c7e" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="6 9 12 15 18 9"></polyline></svg>');
            background-repeat: no-repeat;
            background-position: right 1.2rem center;
            cursor: pointer;
        }

        .input-icon {
            position: absolute;
            left: 1rem;
            bottom: 1rem;
            color: #7f9cbb;
            font-size: 1rem;
            pointer-events: none;
            transition: color 0.2s;
        }

        .input-group input:focus,
        .input-group select:focus {
            border-color: #f39c12;
            box-shadow: 0 0 0 4px rgba(243, 156, 18, 0.15);
        }

        .input-group input:focus + .input-icon,
        .input-group select:focus ~ .input-icon {
            color: #f39c12;
        }

        /* password toggle */
        .toggle-pwd {
            position: absolute;
            right: 1rem;
            bottom: 0.95rem;
            color: #7f9cbb;
            cursor: pointer;
            font-size: 1rem;
            z-index: 2;
        }
        .toggle-pwd:hover {
            color: #f39c12;
        }

        /* strength meter animation */
        .strength-container {
            display: flex;
            gap: 8px;
            margin-top: 8px;
        }
        .strength-segment {
            height: 5px;
            flex: 1;
            background: #e2edf7;
            border-radius: 10px;
            transition: all 0.3s ease;
        }
        .strength-segment.active {
            background: linear-gradient(90deg, #f39c12, #e67e22);
        }

        .helper-note {
            font-size: 0.7rem;
            color: #66809b;
            margin-top: 6px;
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .error-message {
            font-size: 0.7rem;
            margin-top: 6px;
            color: #e67e22;
            display: flex;
            align-items: center;
            gap: 5px;
            font-weight: 500;
        }

        /* Submit button with loading animation and modern effect */
        .tcs-submit {
            width: 100%;
            background: linear-gradient(95deg, #0c3a5e, #155e7b);
            border: none;
            padding: 1rem;
            font-family: 'Inter', sans-serif;
            font-weight: 800;
            font-size: 1rem;
            color: white;
            border-radius: 2.5rem;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 12px;
            cursor: pointer;
            transition: all 0.3s;
            margin-top: 1rem;
            box-shadow: 0 6px 14px rgba(12, 58, 94, 0.3);
        }

        .tcs-submit i {
            transition: transform 0.2s;
        }

        .tcs-submit:hover {
            background: linear-gradient(95deg, #0f466b, #1b6d8f);
            transform: translateY(-2px);
            box-shadow: 0 12px 22px rgba(0, 0, 0, 0.2);
        }

        .tcs-submit:active {
            transform: translateY(1px);
        }

        .login-link {
            text-align: center;
            margin-top: 1.8rem;
            font-size: 0.85rem;
            color: #4b6f8e;
            border-top: 1px solid #eef2f8;
            padding-top: 1.2rem;
        }
        .login-link a {
            color: #e67e22;
            font-weight: 700;
            text-decoration: none;
            margin-left: 4px;
        }
        .login-link a:hover {
            text-decoration: underline;
        }

        /* success toast / notification */
        .toast-notification {
            position: fixed;
            bottom: 30px;
            left: 50%;
            transform: translateX(-50%) translateY(30px);
            background: #1a3b4e;
            backdrop-filter: blur(16px);
            color: white;
            padding: 12px 26px;
            border-radius: 60px;
            display: flex;
            align-items: center;
            gap: 12px;
            font-weight: 600;
            z-index: 1000;
            transition: all 0.3s ease;
            opacity: 0;
            visibility: hidden;
            box-shadow: 0 12px 28px rgba(0,0,0,0.2);
            border-left: 4px solid #f39c12;
        }

        .toast-notification.show {
            opacity: 1;
            visibility: visible;
            transform: translateX(-50%) translateY(0);
        }

        @keyframes spin {
            to { transform: rotate(360deg); }
        }
        .fa-spinner {
            animation: spin 0.8s linear infinite;
        }

        /* responsive */
        @media (max-width: 550px) {
            .tcs-header {
                flex-direction: column;
                text-align: center;
            }
            .tcs-body {
                padding: 1.5rem;
            }
        }
    </style>
</head>
<body>

<div class="tcs-card">
    <div class="tcs-header">
        <div class="logo-area">
            <div class="tcs-logo-svg">
                <!-- TCS Inspired Logo (Abstract 'T' and 'C' with modern shape) -->
                <svg viewBox="0 0 60 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="30" cy="30" r="26" stroke="#FDB81E" stroke-width="2.5" fill="white" fill-opacity="0.1"/>
                    <path d="M18 22 L30 22 L30 40 L22 40 L22 28 L30 28" stroke="#FDB81E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
                    <path d="M30 22 L42 22 L42 40 L34 40 L34 28 L42 28" stroke="#FDB81E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
                    <circle cx="30" cy="30" r="3" fill="#FDB81E" fill-opacity="0.8"/>
                </svg>
            </div>
            <div class="brand-text">
                <h2>Tata Consultancy Services</h2>
                <p>formfillapp • enterprise excellence</p>
            </div>
        </div>
        <div class="animation-badge">
            <div id="lottieIcon" class="lottie-icon"></div>
            <span>Smart Registration</span>
        </div>
    </div>

    <div class="tcs-body">
        <form id="tcsForm" action="#" method="post" novalidate>
            <!-- Mobile Number Field -->
            <div class="input-group" id="mobileGroup">
                <label><i class="fas fa-mobile-alt"></i> Corporate Mobile Number</label>
                <input type="tel" id="mobileNumber" placeholder="+91 98765 43210" required>
                <i class="fas fa-phone-alt input-icon"></i>
                <div class="error-message" id="mobileError"></div>
            </div>

            <!-- Professional Course Dropdown -->
            <div class="input-group" id="courseGroup">
                <label><i class="fas fa-laptop-code"></i> Select Competency Track</label>
                <select id="courseSelect" required>
                    <option value="" disabled selected>— TCS Learning Pathways —</option>
                    <option value="aws">☁️ AWS DevOps Engineering</option>
                    <option value="linux">🐧 Linux System Administration</option>
                    <option value="docker">🐳 Docker & Kubernetes Mastery</option>
                    <option value="terraform">🏗️ Terraform Infrastructure Automation</option>
                </select>
                <i class="fas fa-graduation-cap input-icon"></i>
                <div class="error-message" id="courseError"></div>
            </div>

            <!-- Password Field with Strength -->
            <div class="input-group" id="passwordGroup">
                <label><i class="fas fa-lock"></i> Create Secure Password</label>
                <input type="password" id="password" placeholder="••••••••" autocomplete="new-password" required>
                <i class="fas fa-key input-icon"></i>
                <i class="fas fa-eye toggle-pwd" id="togglePassword"></i>
                <div class="strength-container" id="strengthMeter">
                    <div class="strength-segment"></div>
                    <div class="strength-segment"></div>
                    <div class="strength-segment"></div>
                </div>
                <div class="helper-note"><i class="fas fa-shield-alt"></i> Minimum 8 chars, letters & numbers</div>
                <div class="error-message" id="passwordError"></div>
            </div>

            <!-- Confirm Password -->
            <div class="input-group" id="confirmGroup">
                <label><i class="fas fa-check-double"></i> Re-enter Password</label>
                <input type="password" id="confirmPassword" placeholder="Confirm your password" required>
                <i class="fas fa-shield-alt input-icon"></i>
                <i class="fas fa-eye toggle-pwd" id="toggleConfirmPwd"></i>
                <div class="error-message" id="confirmError"></div>
            </div>

            <button type="submit" class="tcs-submit" id="submitBtn">
                <i class="fas fa-rocket"></i> Launch TCS Workspace
            </button>

            <div class="login-link">
                Already part of TCS ecosystem? <a href="#" id="signinLink">Sign in →</a>
            </div>
        </form>
    </div>
</div>

<div id="toastMsg" class="toast-notification">
    <i class="fas fa-check-circle"></i> <span id="toastText">Account created</span>
</div>

<script>
    (function() {
        // Lottie animation (small tech / register animation)
        const lottieContainer = document.getElementById('lottieIcon');
        if (lottieContainer) {
            const animation = lottie.loadAnimation({
                container: lottieContainer,
                renderer: 'svg',
                loop: true,
                autoplay: true,
                path: 'https://assets2.lottiefiles.com/packages/lf20_uqowh8pm.json' // enterprise like registration icon
            });
            // fallback if network fails, just ignore
            animation.setSpeed(0.8);
        }

        // DOM elements
        const mobileInput = document.getElementById('mobileNumber');
        const courseSelect = document.getElementById('courseSelect');
        const passwordInput = document.getElementById('password');
        const confirmInput = document.getElementById('confirmPassword');
        const mobileError = document.getElementById('mobileError');
        const courseError = document.getElementById('courseError');
        const passwordError = document.getElementById('passwordError');
        const confirmError = document.getElementById('confirmError');
        const form = document.getElementById('tcsForm');
        const submitBtn = document.getElementById('submitBtn');
        const strengthSegments = document.querySelectorAll('#strengthMeter .strength-segment');

        // Toggle Password visibility
        function setupToggle(toggleId, inputId) {
            const toggle = document.getElementById(toggleId);
            const input = document.getElementById(inputId);
            if (toggle && input) {
                toggle.addEventListener('click', () => {
                    const type = input.getAttribute('type') === 'password' ? 'text' : 'password';
                    input.setAttribute('type', type);
                    toggle.classList.toggle('fa-eye-slash');
                    if (toggle.classList.contains('fa-eye-slash')) {
                        toggle.classList.remove('fa-eye');
                    } else {
                        toggle.classList.add('fa-eye');
                    }
                });
            }
        }
        setupToggle('togglePassword', 'password');
        setupToggle('toggleConfirmPwd', 'confirmPassword');

        // Password strength evaluation
        function evaluateStrength(pwd) {
            let score = 0;
            if (pwd.length >= 8) score++;
            if (/[A-Za-z]/.test(pwd) && /[0-9]/.test(pwd)) score++;
            if (pwd.length >= 10 && /[^A-Za-z0-9]/.test(pwd)) score = Math.min(score + 1, 3);
            if (pwd.length >= 12) score = Math.min(score + 1, 3);
            return Math.min(score, 3);
        }

        function updateStrengthMeter(pwd) {
            const strength = evaluateStrength(pwd);
            strengthSegments.forEach((seg, idx) => {
                if (idx < strength) seg.classList.add('active');
                else seg.classList.remove('active');
            });
        }

        // Validation functions
        function validateMobile() {
            const mobile = mobileInput.value.trim();
            if (!mobile) {
                mobileError.innerHTML = '<i class="fas fa-exclamation-triangle"></i> Mobile number required';
                return false;
            }
            const digits = mobile.replace(/[\s\-\(\)\+]/g, '');
            if (!/^\d+$/.test(digits) || digits.length < 8 || digits.length > 15) {
                mobileError.innerHTML = '<i class="fas fa-exclamation-triangle"></i> Valid 8-15 digit mobile number';
                return false;
            }
            mobileError.innerHTML = '';
            return true;
        }

        function validateCourse() {
            if (!courseSelect.value) {
                courseError.innerHTML = '<i class="fas fa-exclamation-triangle"></i> Please select a professional track';
                return false;
            }
            courseError.innerHTML = '';
            return true;
        }

        function validatePassword() {
            const pwd = passwordInput.value;
            if (!pwd) {
                passwordError.innerHTML = '<i class="fas fa-exclamation-triangle"></i> Password required';
                updateStrengthMeter('');
                return false;
            }
            if (pwd.length < 8) {
                passwordError.innerHTML = '<i class="fas fa-exclamation-triangle"></i> Minimum 8 characters needed';
                updateStrengthMeter(pwd);
                return false;
            }
            const hasLetter = /[A-Za-z]/.test(pwd);
            const hasNumber = /[0-9]/.test(pwd);
            if (!hasLetter || !hasNumber) {
                passwordError.innerHTML = '<i class="fas fa-exclamation-triangle"></i> Combine letters & numbers for strong password';
                updateStrengthMeter(pwd);
                return false;
            }
            passwordError.innerHTML = '';
            updateStrengthMeter(pwd);
            return true;
        }

        function validateConfirm() {
            const pwd = passwordInput.value;
            const confirm = confirmInput.value;
            if (!confirm) {
                confirmError.innerHTML = '<i class="fas fa-exclamation-triangle"></i> Please confirm password';
                return false;
            }
            if (pwd !== confirm) {
                confirmError.innerHTML = '<i class="fas fa-exclamation-triangle"></i> Passwords do not match';
                return false;
            }
            confirmError.innerHTML = '';
            return true;
        }

        // Toast notification
        function showToast(message, isError = false) {
            const toast = document.getElementById('toastMsg');
            const toastSpan = document.getElementById('toastText');
            const icon = toast.querySelector('i');
            if (isError) {
                icon.className = 'fas fa-times-circle';
                toast.style.borderLeftColor = '#e67e22';
            } else {
                icon.className = 'fas fa-check-circle';
                toast.style.borderLeftColor = '#f39c12';
            }
            toastSpan.innerText = message;
            toast.classList.add('show');
            setTimeout(() => {
                toast.classList.remove('show');
            }, 3000);
        }

        // realtime listeners
        mobileInput.addEventListener('input', validateMobile);
        courseSelect.addEventListener('change', validateCourse);
        passwordInput.addEventListener('input', () => {
            validatePassword();
            if (confirmInput.value.length) validateConfirm();
        });
        confirmInput.addEventListener('input', validateConfirm);

        // form submit with modern loading animation
        form.addEventListener('submit', async (e) => {
            e.preventDefault();
            const isMobileOk = validateMobile();
            const isCourseOk = validateCourse();
            const isPwdOk = validatePassword();
            const isConfirmOk = validateConfirm();

            if (isMobileOk && isCourseOk && isPwdOk && isConfirmOk) {
                const selectedCourse = courseSelect.options[courseSelect.selectedIndex]?.text || 'Competency';
                const mobileDisplay = mobileInput.value.trim();
                // change button to loading state
                const originalBtnHTML = submitBtn.innerHTML;
                submitBtn.innerHTML = '<i class="fas fa-spinner"></i> Registering with TCS...';
                submitBtn.disabled = true;

                setTimeout(() => {
                    showToast(`✅ Welcome, ${mobileDisplay} | ${selectedCourse} track activated.`, false);
                    submitBtn.innerHTML = '<i class="fas fa-check-circle"></i> Workspace Ready';
                    setTimeout(() => {
                        submitBtn.innerHTML = originalBtnHTML;
                        submitBtn.disabled = false;
                        // optional: reset strength and fields (don't reset)
                    }, 1800);
                }, 1000);
            } else {
                showToast('Please fix highlighted errors before proceeding', true);
                const firstErr = document.querySelector('.error-message:not(:empty)');
                if (firstErr) firstErr.scrollIntoView({ behavior: 'smooth', block: 'center' });
            }
        });

        // sign in mock link with animation effect
        const signinMock = document.getElementById('signinLink');
        if (signinMock) {
            signinMock.addEventListener('click', (e) => {
                e.preventDefault();
                showToast('🔐 TCS Single Sign-On portal — welcome back', false);
            });
        }

        // init strength
        updateStrengthMeter('');
        // additional micro animation for input placeholders
        mobileInput.addEventListener('focus', () => {
            if (!mobileInput.value) mobileInput.placeholder = "e.g., +91 9988776655";
        });
        mobileInput.addEventListener('blur', () => {
            mobileInput.placeholder = "+91 98752 43210";
        });
    })();
</script>
</body>
</html>
