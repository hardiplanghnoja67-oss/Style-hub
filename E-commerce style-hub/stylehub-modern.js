/* ============================================================
   STYLEHUB MODERN INTERACTIONS
   Premium Fashion E-Commerce — Shared Script
   ============================================================ */

(function () {
    'use strict';

    /* ── NAVBAR SCROLL BEHAVIOR ─────────────────────────────── */
    const navbar = document.querySelector('.sh-navbar');
    if (navbar) {
        const onScroll = () => {
            navbar.classList.toggle('scrolled', window.scrollY > 30);
        };
        window.addEventListener('scroll', onScroll, { passive: true });
        onScroll();
    }

    /* ── MOBILE MENU ────────────────────────────────────────── */
    const toggler  = document.querySelector('.sh-toggler');
    const navMenu  = document.querySelector('.sh-nav-menu');
    const backdrop = document.getElementById('sh-menu-backdrop');

    if (toggler && navMenu) {
        toggler.addEventListener('click', () => {
            const isOpen = navMenu.classList.toggle('open');
            toggler.setAttribute('aria-expanded', String(isOpen));
            if (backdrop) backdrop.style.display = isOpen ? 'block' : 'none';
        });

        if (backdrop) {
            backdrop.addEventListener('click', () => {
                navMenu.classList.remove('open');
                if (backdrop) backdrop.style.display = 'none';
            });
        }

        // Close menu on nav link click
        navMenu.querySelectorAll('.sh-nav-link').forEach(link => {
            link.addEventListener('click', () => {
                navMenu.classList.remove('open');
                if (backdrop) backdrop.style.display = 'none';
            });
        });
    }

    /* ── ACTIVE NAV LINK ────────────────────────────────────── */
    const currentPage = window.location.pathname.split('/').pop().toLowerCase();
    document.querySelectorAll('.sh-nav-link').forEach(link => {
        const href = link.getAttribute('href') || '';
        if (href.toLowerCase() === currentPage || href.toLowerCase().includes(currentPage.replace('.aspx', ''))) {
            link.classList.add('active');
        }
    });

    /* ── SCROLL REVEAL (IntersectionObserver) ───────────────── */
    const revealEls = document.querySelectorAll('.reveal, .reveal-left, .reveal-right');
    if (revealEls.length > 0 && 'IntersectionObserver' in window) {
        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add('visible');
                    observer.unobserve(entry.target);
                }
            });
        }, { threshold: 0.12, rootMargin: '0px 0px -40px 0px' });

        revealEls.forEach(el => observer.observe(el));
    } else {
        // Fallback: show all immediately
        revealEls.forEach(el => el.classList.add('visible'));
    }

    /* ── WISHLIST HEART TOGGLE ──────────────────────────────── */
    document.querySelectorAll('.sh-wishlist-btn').forEach(btn => {
        btn.addEventListener('click', function (e) {
            e.preventDefault();
            e.stopPropagation();
            this.classList.toggle('active');
            this.classList.add('animate');
            setTimeout(() => this.classList.remove('animate'), 400);

            // Update icon
            const icon = this.querySelector('i');
            if (icon) {
                icon.className = this.classList.contains('active')
                    ? 'fa-solid fa-heart'
                    : 'fa-regular fa-heart';
            }

            // Show toast
            const msg = this.classList.contains('active')
                ? 'Added to wishlist!'
                : 'Removed from wishlist';
            showToast(msg, 'fa-heart');
        });
    });

    /* ── QUANTITY CONTROLS ──────────────────────────────────── */
    document.querySelectorAll('.sh-qty-btn').forEach(btn => {
        btn.addEventListener('click', function () {
            const input = this.closest('.sh-quantity-box')?.querySelector('.sh-qty-input');
            if (!input) return;
            let val = parseInt(input.value) || 1;
            if (this.dataset.action === 'dec') val = Math.max(1, val - 1);
            if (this.dataset.action === 'inc') val = Math.min(99, val + 1);
            input.value = val;

            // Trigger change event for ASP.NET binding compatibility
            input.dispatchEvent(new Event('change', { bubbles: true }));
        });
    });

    /* ── SIZE BUTTON SELECTION ──────────────────────────────── */
    document.querySelectorAll('.sh-size-btn').forEach(btn => {
        btn.addEventListener('click', function () {
            const group = this.closest('.sh-size-group');
            if (group) {
                group.querySelectorAll('.sh-size-btn').forEach(b => b.classList.remove('selected'));
            }
            this.classList.add('selected');
        });
    });

    /* ── COLOR BUTTON SELECTION ─────────────────────────────── */
    document.querySelectorAll('.sh-color-btn').forEach(btn => {
        btn.addEventListener('click', function () {
            const group = this.closest('.sh-color-group');
            if (group) {
                group.querySelectorAll('.sh-color-btn').forEach(b => b.classList.remove('selected'));
            }
            this.classList.add('selected');
        });
    });

    /* ── TOAST SYSTEM ───────────────────────────────────────── */
    function showToast(message, icon = 'fa-check-circle', duration = 3000) {
        let wrap = document.querySelector('.sh-toast-wrap');
        if (!wrap) {
            wrap = document.createElement('div');
            wrap.className = 'sh-toast-wrap';
            document.body.appendChild(wrap);
        }

        const toast = document.createElement('div');
        toast.className = 'sh-toast';
        toast.innerHTML = `<i class="fa-solid ${icon}"></i><span>${message}</span>`;
        wrap.appendChild(toast);

        requestAnimationFrame(() => {
            requestAnimationFrame(() => toast.classList.add('show'));
        });

        setTimeout(() => {
            toast.classList.remove('show');
            setTimeout(() => toast.remove(), 450);
        }, duration);
    }

    window.SHToast = showToast;

    /* ── NEWSLETTER FORM ────────────────────────────────────── */
    const newsletterForm = document.querySelector('.sh-newsletter-form');
    if (newsletterForm) {
        newsletterForm.addEventListener('submit', function (e) {
            e.preventDefault();
            const input = this.querySelector('input[type="email"]');
            if (input && input.value.trim()) {
                showToast('You\'re now subscribed! 🎉', 'fa-envelope');
                input.value = '';
            }
        });
    }

    /* ── SMOOTH SCROLL for anchor links ─────────────────────── */
    document.querySelectorAll('a[href^="#"]').forEach(link => {
        link.addEventListener('click', function (e) {
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                e.preventDefault();
                target.scrollIntoView({ behavior: 'smooth', block: 'start' });
            }
        });
    });

    /* ── ADD TO CART ANIMATION ──────────────────────────────── */
    document.querySelectorAll('.sh-cart-btn, [data-action="add-cart"]').forEach(btn => {
        btn.addEventListener('click', function () {
            // Don't interfere with ASP.NET postback — just add visual feedback
            const icon = document.querySelector('.sh-nav-icon[href*="Cart"]');
            if (icon) {
                icon.style.transform = 'scale(1.3)';
                icon.style.color = '#c9a227';
                setTimeout(() => {
                    icon.style.transform = '';
                    icon.style.color = '';
                }, 500);
            }
            showToast('Added to cart!', 'fa-bag-shopping');
        });
    });

    /* ── PAYMENT OPTION SELECTION ───────────────────────────── */
    document.querySelectorAll('.sh-payment-option').forEach(opt => {
        const radio = opt.querySelector('input[type="radio"]');
        opt.addEventListener('click', () => {
            document.querySelectorAll('.sh-payment-option').forEach(o => {
                o.style.borderColor = '';
                o.style.background = '';
            });
            opt.style.borderColor = 'var(--accent)';
            opt.style.background = 'rgba(201,162,39,.04)';
            if (radio) radio.checked = true;
        });

        // Initialize active state
        if (radio && radio.checked) {
            opt.style.borderColor = 'var(--accent)';
            opt.style.background = 'rgba(201,162,39,.04)';
        }
    });

    /* ── PRODUCT IMAGE ZOOM on Details page ─────────────────── */
    const detailImg = document.querySelector('.sh-product-detail-img-box');
    if (detailImg) {
        detailImg.addEventListener('mousemove', function (e) {
            const rect = this.getBoundingClientRect();
            const x = ((e.clientX - rect.left) / rect.width  * 100).toFixed(2);
            const y = ((e.clientY - rect.top)  / rect.height * 100).toFixed(2);
            const img = this.querySelector('.sh-product-detail-img');
            if (img) img.style.transformOrigin = `${x}% ${y}%`;
        });
    }

    /* ── ADMIN SIDEBAR MOBILE TOGGLE ────────────────────────── */
    const sidebarToggle = document.getElementById('sh-admin-toggle');
    const sidebar = document.querySelector('.sh-admin-sidebar');
    if (sidebarToggle && sidebar) {
        sidebarToggle.addEventListener('click', () => {
            sidebar.classList.toggle('open');
        });
    }

    /* ── COUNTER ANIMATION (Admin Dashboard) ────────────────── */
    function animateCounters() {
        document.querySelectorAll('.sh-stat-number[data-count]').forEach(el => {
            const target = parseInt(el.dataset.count) || 0;
            const duration = 1400;
            const start = performance.now();

            const update = (time) => {
                const elapsed = time - start;
                const progress = Math.min(elapsed / duration, 1);
                const eased = 1 - Math.pow(1 - progress, 3);
                const current = Math.round(target * eased);
                el.textContent = el.dataset.prefix
                    ? el.dataset.prefix + current.toLocaleString()
                    : current.toLocaleString();
                if (progress < 1) requestAnimationFrame(update);
            };

            requestAnimationFrame(update);
        });
    }

    // Trigger counter animation when visible
    const statsSection = document.querySelector('.sh-stats-row');
    if (statsSection && 'IntersectionObserver' in window) {
        const statsObserver = new IntersectionObserver((entries) => {
            if (entries[0].isIntersecting) {
                animateCounters();
                statsObserver.disconnect();
            }
        }, { threshold: 0.3 });
        statsObserver.observe(statsSection);
    } else if (statsSection) {
        animateCounters();
    }

    /* ── HERO PARALLAX (subtle) ─────────────────────────────── */
    const hero = document.querySelector('.sh-hero');
    if (hero) {
        window.addEventListener('scroll', () => {
            const offset = window.scrollY;
            if (offset < window.innerHeight) {
                hero.style.backgroundPositionY = `calc(50% + ${offset * 0.3}px)`;
            }
        }, { passive: true });
    }

})();
