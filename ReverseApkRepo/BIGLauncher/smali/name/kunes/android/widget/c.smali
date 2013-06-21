.class final Lname/kunes/android/widget/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/widget/AccessibleListItem;

.field private final synthetic b:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lname/kunes/android/widget/AccessibleListItem;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/widget/c;->a:Lname/kunes/android/widget/AccessibleListItem;

    iput-object p2, p0, Lname/kunes/android/widget/c;->b:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lname/kunes/android/launcher/h;->a(Landroid/view/View;)V

    iget-object v0, p0, Lname/kunes/android/widget/c;->b:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
