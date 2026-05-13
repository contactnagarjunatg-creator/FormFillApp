<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
    <title>FormFillApp | Shaadi • Indian Wedding Curl Theme</title>
    <!-- Premium Fonts: Cursive / Italic / Curly style -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600&family=Great+Vibes&family=Inter:ital,wght@0,300;0,400;0,500;1,300;1,400&display=swap" rel="stylesheet">
    <!-- Font Awesome 6 (free) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            min-height: 100vh;
            background: linear-gradient(145deg, #fef5e7 0%, #fff0e0 100%);
            font-family: 'Playfair Display', 'Inter', serif;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 2rem 1.5rem;
            position: relative;
            overflow-x: hidden;
        }

        /* ---------- INDIAN WEDDING CURLY BRANCHES (SVG & decorative elements) ---------- */
        body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 800" opacity="0.2"><path fill="none" stroke="%23b87333" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" d="M120,50 C180,20 240,70 280,40 C320,10 370,60 420,30 C470,0 520,55 570,35 C620,15 660,65 710,45 C760,25 800,75 850,55 C900,35 940,80 990,60 C1040,40 1080,90 1120,70" /><path fill="none" stroke="%23d4a373" stroke-width="2" d="M140,100 C200,130 260,90 320,120 C380,150 440,110 500,140 C560,170 620,130 680,160 C740,190 800,150 860,175 C920,200 980,165 1040,190" /><path fill="none" stroke="%23b5651d" stroke-width="2" stroke-dasharray="4 6" d="M80,200 C150,170 210,230 280,200 C350,170 410,230 480,210 C550,190 610,240 680,220 C750,200 810,250 880,235 C950,220 1000,260 1080,245" /><path fill="none" stroke="%23c97e3a" stroke-width="2.2" d="M60,330 C130,300 190,360 260,340 C330,320 390,370 460,355 C530,340 590,380 660,365 C730,350 790,390 860,378 C930,366 980,400 1050,390" /><path fill="none" stroke="%23945c30" stroke-width="1.8" d="M40,470 C120,440 180,490 250,475 C320,460 380,500 450,490 C520,480 580,510 650,505 C720,500 780,530 850,520 C920,510 970,540 1040,535" /><circle cx="280" cy="40" r="6" fill="%23e08e3a" opacity="0.6" /><circle cx="570" cy="35" r="8" fill="%23d47e2c" opacity="0.5" /><circle cx="850" cy="55" r="5" fill="%23b86b2a" opacity="0.6" /><path fill="none" stroke="%23b46a2c" stroke-width="2" stroke-linecap="round" d="M250,150 C270,140 285,170 300,155 C315,140 330,165 350,150" /><path fill="none" stroke="%23995a27" stroke-width="2" d="M680,280 C695,270 710,295 728,282 C745,269 762,290 780,277" /><path fill="none" stroke="%23ad6b35" stroke-width="1.5" d="M880,300 C895,288 915,310 935,298 C955,286 970,306 990,295" /><text font-family="Great Vibes" fill="%23b56a2c" font-size="20" x="920" y="130" opacity="0.45">~ mehendi ~</text><text font-family="Great Vibes" fill="%239c5e2a" font-size="18" x="80" y="560" opacity="0.45">~ eternal blessings ~</text></svg>');
            background-repeat: repeat;
            background-size: 550px;
            background-position: top left;
            pointer-events: none;
            z-index: 0;
        }

        /* extra floral curly overlays */
        body::after {
            content: "";
            position: absolute;
            bottom: 0;
            right: 0;
            width: 380px;
            height: 380px;
            background: radial-gradient(circle, rgba(209, 143, 56, 0.08) 0%, rgba(235, 190, 110, 0) 80%);
            border-radius: 50%;
            pointer-events: none;
        }

        /* main card — like a wedding invitation card */
        .wedding-card {
            max-width: 680px;
            width: 100%;
            background: rgba(255, 252, 245, 0.94);
            backdrop-filter: blur(3px);
            border-radius: 4rem 2rem 4rem 2rem;
            box-shadow: 0 30px 50px rgba(120, 60, 30, 0.2), 0 0 0 12px rgba(255, 235, 200, 0.6), 0 0 0 2px #e7c8a0 inset;
            position: relative;
            z-index: 2;
            overflow: hidden;
            transition: all 0.3s ease;
            border: 1px solid #fae6c3;
        }

        /* intricate border pattern like toran */
        .wedding-card::before {
            content: "✽ ✾ ✿ ❀ ✤ ✽";
            position: absolute;
            top: -8px;
            left: 0;
            width: 100%;
            text-align: center;
            font-size: 1.3rem;
            letter-spacing: 8px;
            color: #cd8d5b;
            opacity: 0.7;
            font-family: 'Great Vibes', cursive;
            pointer-events: none;
        }

        /* inner content padding */
        .card-inner {
            padding: 2.5rem 2rem 2.8rem;
        }

        /* header with elegant italic */
        .wedding-header {
            text-align: center;
            margin-bottom: 2rem;
            position: relative;
        }
        .wedding-header .subtle-mandala {
            font-family: 'Great Vibes', cursive;
            font-size: 1.9rem;
            font-weight: 500;
            color: #b5763a;
            letter-spacing: 2px;
            margin-bottom: 0.2rem;
            font-style: italic;
        }
        .wedding-header h1 {
            font-family: 'Playfair Display', serif;
            font-size: 2.4rem;
            font-weight: 700;
            font-style: italic;
            background: linear-gradient(135deg, #b45f2b, #e7b27d);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            letter-spacing: -0.5px;
            margin: 5px 0;
        }
        .wedding-header p {
            font-family: 'Inter', cursive;
            font-style: italic;
            color: #aa7a4c;
            font-size: 0.9rem;
            border-top: 1px dashed #e9cfab;
            display: inline-block;
            padding-top: 8px;
        }

        /* form groups with curly touch */
        .form-group {
            margin-bottom: 1.6rem;
            position: relative;
        }
        .form-group label {
            display: flex;
            align-items: center;
            gap: 8px;
            font-family: 'Playfair Display', serif;
            font-style: italic;
            font-weight: 600;
            color: #8a542a;
            margin-bottom: 8px;
            font-size: 0.9rem;
            letter-spacing: 0.3px;
        }
        .form-group label i {
            color: #c28546;
            font-size: 0.9rem;
        }

        /* input & select - elegant rounded with curly vintage */
        .curly-input, .curly-select {
            width: 100%;
            padding: 0.9rem 1rem 0.9rem 2.6rem;
            font-family: 'Inter', 'Playfair Display', serif;
            font-size: 1rem;
            background-color: #fffef7;
            border: 1.5px solid #f0dbbc;
            border-radius: 2rem;
            transition: all 0.25s;
            outline: none;
            color: #43240c;
            font-weight: 500;
            box-shadow: inset 0 1px 2px #fff8e7, 0 2px 4px rgba(0,0,0,0.02);
        }
        .curly-select {
            appearance: none;
            background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="%23b46a32" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="6 9 12 15 18 9"></polyline></svg>');
            background-repeat: no-repeat;
            background-position: right 1.2rem center;
            background-size: 1rem;
            cursor: pointer;
        }
        .curly-input:focus, .curly-select:focus {
            border-color: #c98f55;
            box-shadow: 0 0 0 4px rgba(193, 118, 52, 0.15);
        }

        .input-icon {
            position: absolute;
            left: 1rem;
            bottom: 1rem;
            color: #c28a54;
            font-size: 1rem;
            pointer-events: none;
            font-style: normal;
        }

        /* password eye toggle */
        .toggle-eye {
            position: absolute;
            right: 1rem;
            bottom: 1rem;
            color: #b47b45;
            cursor: pointer;
            transition: 0.2s;
            z-index: 3;
        }
        .toggle-eye:hover {
            color: #744a22;
        }

        /* password strength and hints */
        .strength-wrapper {
            margin-top: 8px;
            display: flex;
            gap: 5px;
        }
        .strength-bar {
            height: 4px;
            flex: 1;
            background: #eedbc8;
            border-radius: 6px;
        }
        .strength-bar.active {
            background: #d69554;
        }
        .hint-italic {
            font-family: 'Inter', cursive;
            font-style: italic;
            font-size: 0.7rem;
            color: #b97f48;
            margin-top: 6px;
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .error-msg {
            font-family: 'Inter', cursive;
            font-style: italic;
            font-size: 0.7rem;
            color: #c05a2b;
            margin-top: 6px;
            margin-left: 12px;
            display: flex;
            align-items: center;
            gap: 5px;
        }

        /* wedding style button */
        .wedding-btn {
            width: 100%;
            background: linear-gradient(105deg, #b8672c, #dc9a62);
            border: none;
            padding: 1rem;
            font-family: 'Playfair Display', serif;
            font-style: italic;
            font-weight: 700;
            font-size: 1.1rem;
            color: #fff9ef;
            border-radius: 3rem;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 12px;
            cursor: pointer;
            transition: all 0.3s;
            margin-top: 12px;
            box-shadow: 0 8px 20px rgba(165, 85, 25, 0.25);
            letter-spacing: 1px;
        }
        .wedding-btn i {
            font-size: 1.2rem;
        }
        .wedding-btn:hover {
            background: linear-gradient(105deg, #9d5623, #c48248);
            transform: translateY(-2px);
            box-shadow: 0 12px 28px rgba(120, 60, 20, 0.35);
        }

        .sign-in-area {
            text-align: center;
            margin-top: 2rem;
            font-family: 'Playfair Display', serif;
            font-style: italic;
            color: #875c34;
            border-top: 1px dashed #eddabc;
            padding-top: 1.2rem;
        }
        .sign-in-area a {
            color: #bb6b37;
            font-weight: bold;
            text-decoration: none;
            border-bottom: 1px dotted #d69458;
            margin-left: 6px;
        }
        .sign-in-area a:hover {
            color: #904e1f;
        }

        /* embellishment: curly flourish before/after submit */
        .floral-divider {
            text-align: center;
            font-size: 1rem;
            color: #e2bc88;
            margin: 8px 0 0;
            font-family: 'Great Vibes', cursive;
        }

        /* toast notification wedding style */
        .wedding-toast {
            position: fixed;
            bottom: 30px;
            left: 50%;
            transform: translateX(-50%) translateY(20px);
            background: #fff9ef;
            border-left: 8px solid #e2aa74;
            border-radius: 60px;
            padding: 10px 20px;
            font-family: 'Inter', cursive;
            font-style: italic;
            font-weight: 500;
            color: #794f2a;
            box-shadow: 0 12px 22px rgba(0,0,0,0.15);
            display: flex;
            align-items: center;
            gap: 12px;
            z-index: 1000;
            transition: all 0.3s cubic-bezier(0.2,0.9,0.4,1.1);
            opacity: 0;
            visibility: hidden;
            backdrop-filter: blur(4px);
        }
        .wedding-toast.show {
            opacity: 1;
            visibility: visible;
            transform: translateX(-50%) translateY(0);
        }

        @media (max-width: 550px) {
            .card-inner {
                padding: 1.8rem;
            }
            .wedding-header h1 {
                font-size: 1.8rem;
            }
        }

        /* custom select option style */
        option {
            font-style: normal;
        }
        i, .curly-font {
            font-style: italic;
        }
    </style>
</head>
<body>

<div class="wedding-card">
    <div class="card-inner">
        <div class="wedding-header">
            <div class="subtle-mandala">✿ Sahebji ✿</div>
            <h1>FormFillApp · Vivaah</h1>
            <p>✨ where tradition meets modern elegance ✨</p>
        </div>

        <form id="weddingForm" action="#" method="post" novalidate>
            <!-- Mobile Number -->
            <div class="form-group" id="mobileGroup">
                <label><i class="fas fa-phone-alt"></i> <span class="curly-font">Mangal mobile number</span></label>
                <input type="tel" class="curly-input" id="mobileNumber" placeholder="+91 98765 43210" required>
                <i class="fas fa-mobile-alt input-icon"></i>
                <div class="error-msg" id="mobileError"></div>
            </div>

            <!-- Professional Course with wedding touch -->
            <div class="form-group" id="courseGroup">
                <label><i class="fas fa-graduation-cap"></i> <span class="curly-font">Choose your Vidya (Course)</span></label>
                <select class="curly-select" id="courseSelect" required>
                    <option value="" disabled selected>— Curl your path —</option>
                    <option value="aws">🌿 AWS DevOps Engineering</option>
                    <option value="linux">🍂 Linux System Administration</option>
                    <option value="docker">✨ Docker & Kubernetes Mastery</option>
                    <option value="terraform">🌸 Terraform Infrastructure Automation</option>
                </select>
                <i class="fas fa-leaf input-icon"></i>
                <div class="error-msg" id="courseError"></div>
            </div>

            <!-- Secure Password with strength meter -->
            <div class="form-group" id="passwordGroup">
                <label><i class="fas fa-lock"></i> <span class="curly-font">Create sacred password</span></label>
                <input type="password" class="curly-input" id="password" placeholder="••••••••" required>
                <i class="fas fa-key input-icon"></i>
                <i class="fas fa-eye toggle-eye" id="togglePassword"></i>
                <div class="strength-wrapper" id="strengthBars">
                    <div class="strength-bar"></div>
                    <div class="strength-bar"></div>
                    <div class="strength-bar"></div>
                </div>
                <div class="hint-italic"><i class="fas fa-feather-alt"></i> 8+ chars, letters & numbers (curly secure)</div>
                <div class="error-msg" id="passwordError"></div>
            </div>

            <!-- Confirm Password -->
            <div class="form-group" id="confirmGroup">
                <label><i class="fas fa-check-circle"></i> <span class="curly-font">Confirm the vow</span></label>
                <input type="password" class="curly-input" id="confirmPassword" placeholder="retype password" required>
                <i class="fas fa-heart input-icon"></i>
                <i class="fas fa-eye toggle-eye" id="toggleConfirm"></i>
                <div class="error-msg" id="confirmError"></div>
            </div>

            <button type="submit" class="wedding-btn" id="submitBtn">
                <i class="fas fa-ring"></i> Bless My Account
            </button>
            <div class="floral-divider">✽ ✾ ✿ ❀ ✤</div>
            <div class="sign-in-area">
                Already have an invitation?
                <a href="#" id="signInMock">Sign in with grace →</a>
            </div>
        </form>
    </div>
</div>

<div id="weddingToast" class="wedding-toast">
    <i class="fas fa-feather-alt"></i> <span id="toastMessageText">✨ Welcome, dear one ✨</span>
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
        const form = document.getElementById('weddingForm');
        const submitBtn = document.getElementById('submitBtn');
        const strengthBars = document.querySelectorAll('#strengthBars .strength-bar');
        
        // toggle password visibility
        const togglePwd = document.getElementById('togglePassword');
        const toggleConfirm = document.getElementById('toggleConfirm');

        function togglePassword(inputField, toggleIcon) {
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
            togglePwd.addEventListener('click', () => togglePassword(passwordInput, togglePwd));
        }
        if(toggleConfirm && confirmInput) {
            toggleConfirm.addEventListener('click', () => togglePassword(confirmInput, toggleConfirm));
        }
        
        // Password strength meter evaluation
        function evaluateStrength(pwd) {
            let strength = 0;
            if(pwd.length >= 8) strength++;
            if(/[A-Za-z]/.test(pwd) && /[0-9]/.test(pwd)) strength++;
            if(/[^A-Za-z0-9]/.test(pwd) || pwd.length >= 12) strength = Math.min(strength + 1, 3);
            return strength;
        }
        
        function updateStrengthMeter(pwd) {
            const strength = evaluateStrength(pwd);
            strengthBars.forEach((bar, idx) => {
                if(idx < strength) bar.classList.add('active');
                else bar.classList.remove('active');
            });
        }
        
        // Real-time validations
        function validateMobile() {
            const mobile = mobileInput.value.trim();
            if(mobile === "") {
                mobileError.innerHTML = '<i class="fas fa-flower"></i> Mobile number required for auspicious start';
                return false;
            }
            const digits = mobile.replace(/[\s\-\(\)\+]/g, '');
            if(!/^\d+$/.test(digits) || digits.length < 8 || digits.length > 15) {
                mobileError.innerHTML = '<i class="fas fa-leaf"></i> Enter valid Indian/global mobile (8-15 digits)';
                return false;
            }
            mobileError.innerHTML = '';
            return true;
        }
        
        function validateCourse() {
            const courseVal = courseSelect.value;
            if(!courseVal) {
                courseError.innerHTML = '<i class="fas fa-feather"></i> Please choose a professional course';
                return false;
            }
            courseError.innerHTML = '';
            return true;
        }
        
        function validatePassword() {
            const pwd = passwordInput.value;
            if(pwd === "") {
                passwordError.innerHTML = '<i class="fas fa-heart-broken"></i> Password is required';
                updateStrengthMeter('');
                return false;
            }
            if(pwd.length < 8) {
                passwordError.innerHTML = '<i class="fas fa-curl"></i> At least 8 characters needed';
                updateStrengthMeter(pwd);
                return false;
            }
            const hasLetter = /[A-Za-z]/.test(pwd);
            const hasNumber = /[0-9]/.test(pwd);
            if(!hasLetter || !hasNumber) {
                passwordError.innerHTML = '<i class="fas fa-feather"></i> Mix of letters & numbers for strong vow';
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
            if(confirm === "") {
                confirmError.innerHTML = '<i class="fas fa-ring"></i> Please confirm your password';
                return false;
            }
            if(pwd !== confirm) {
                confirmError.innerHTML = '<i class="fas fa-leaf"></i> Passwords do not match — please align';
                return false;
            }
            confirmError.innerHTML = '';
            return true;
        }
        
        // Event listeners for live UX
        mobileInput.addEventListener('input', validateMobile);
        courseSelect.addEventListener('change', validateCourse);
        passwordInput.addEventListener('input', () => {
            validatePassword();
            if(confirmInput.value.length > 0) validateConfirm();
        });
        confirmInput.addEventListener('input', validateConfirm);
        
        // Toast notification with Indian wedding style
        function showWeddingToast(message, isError = false) {
            const toast = document.getElementById('weddingToast');
            const toastSpan = document.getElementById('toastMessageText');
            const icon = toast.querySelector('i');
            if(isError) {
                icon.className = "fas fa-leaf";
                toast.style.borderLeftColor = "#c05a2b";
            } else {
                icon.className = "fas fa-feather-alt";
                toast.style.borderLeftColor = "#e2aa74";
            }
            toastSpan.innerText = message;
            toast.classList.add('show');
            setTimeout(() => {
                toast.classList.remove('show');
            }, 3000);
        }
        
        // handle form submit with beautiful wedding feedback
        form.addEventListener('submit', (e) => {
            e.preventDefault();
            const isMobileValid = validateMobile();
            const isCourseValid = validateCourse();
            const isPwdValid = validatePassword();
            const isConfirmValid = validateConfirm();
            
            if(isMobileValid && isCourseValid && isPwdValid && isConfirmValid) {
                const courseText = courseSelect.options[courseSelect.selectedIndex]?.text || "Vidya";
                const mobileMask = mobileInput.value.trim();
                // Show loading on button
                const originalBtn = submitBtn.innerHTML;
                submitBtn.innerHTML = '<i class="fas fa-spinner fa-pulse"></i> Blessings in progress...';
                submitBtn.disabled = true;
                setTimeout(() => {
                    showWeddingToast(`🌸 Shagun! Your ${courseText} journey begins. Welcome, ${mobileMask} 🌸`, false);
                    submitBtn.innerHTML = '<i class="fas fa-check-circle"></i> Account sanctified ✨';
                    setTimeout(() => {
                        submitBtn.innerHTML = originalBtn;
                        submitBtn.disabled = false;
                    }, 1700);
                }, 900);
            } else {
                showWeddingToast("Please complete all details with care (curly branches guide you)", true);
                const firstError = document.querySelector('.error-msg:not(:empty)');
                if(firstError) firstError.scrollIntoView({ behavior: 'smooth', block: 'center' });
            }
        });
        
        // Sign in mock
        const signLink = document.getElementById('signInMock');
        if(signLink) {
            signLink.addEventListener('click', (e) => {
                e.preventDefault();
                showWeddingToast("ॐ Sign in with elegance — welcome back to FormFillApp", false);
            });
        }
        
        // initial strength update
        updateStrengthMeter('');
        // additional curly placeholder effect 
        mobileInput.addEventListener('focus', () => { if(!mobileInput.value) mobileInput.placeholder = "✦ +91 98765 43210 ✦"; });
        mobileInput.addEventListener('blur', () => { mobileInput.placeholder = "+91 98765 43210"; });
    })();
</script>
</body>
</html>
