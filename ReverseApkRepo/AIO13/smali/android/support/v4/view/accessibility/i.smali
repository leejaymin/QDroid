.class final Landroid/support/v4/view/accessibility/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# instance fields
.field final synthetic a:Landroid/support/v4/view/accessibility/j;


# direct methods
.method constructor <init>(Landroid/support/v4/view/accessibility/j;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/accessibility/i;->a:Landroid/support/v4/view/accessibility/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccessibilityStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/accessibility/i;->a:Landroid/support/v4/view/accessibility/j;

    invoke-interface {v0, p1}, Landroid/support/v4/view/accessibility/j;->a(Z)V

    return-void
.end method
