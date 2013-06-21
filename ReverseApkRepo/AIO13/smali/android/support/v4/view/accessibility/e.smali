.class final Landroid/support/v4/view/accessibility/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/accessibility/j;


# instance fields
.field final synthetic a:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

.field final synthetic b:Landroid/support/v4/view/accessibility/d;


# direct methods
.method constructor <init>(Landroid/support/v4/view/accessibility/d;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/accessibility/e;->b:Landroid/support/v4/view/accessibility/d;

    iput-object p2, p0, Landroid/support/v4/view/accessibility/e;->a:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/accessibility/e;->a:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;->onAccessibilityStateChanged(Z)V

    return-void
.end method
