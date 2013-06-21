.class public final Lname/kunes/android/launcher/activity/b/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Ljava/lang/String;

.field private c:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lname/kunes/android/launcher/activity/b/i;->a:Landroid/app/Activity;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/b/i;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/activity/b/i;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/i;->c:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic b(Lname/kunes/android/launcher/activity/b/i;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/i;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lname/kunes/android/launcher/activity/b/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/i;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/i;->a:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lname/kunes/android/widget/AccessibleListView;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/i;->a:Landroid/app/Activity;

    invoke-direct {v2, v0}, Lname/kunes/android/widget/AccessibleListView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/i;->a:Landroid/app/Activity;

    const v4, 0x7f030006

    new-array v5, v7, [Landroid/widget/TextView;

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v0, 0x3

    new-array v4, v0, [Landroid/view/View;

    new-instance v0, Lname/kunes/android/launcher/c/d;

    iget-object v5, p0, Lname/kunes/android/launcher/activity/b/i;->a:Landroid/app/Activity;

    invoke-direct {v0, v5}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/i;->a:Landroid/app/Activity;

    const v5, 0x7f060087

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lname/kunes/android/launcher/activity/b/i;->b:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lname/kunes/android/launcher/activity/b/i;->a:Landroid/app/Activity;

    invoke-static {v5, v0}, Lname/kunes/android/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    :goto_0
    aput-object v0, v4, v7

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/i;->a:Landroid/app/Activity;

    const v5, 0x7f060088

    const/16 v6, 0x29

    new-instance v7, Lname/kunes/android/launcher/activity/b/g;

    invoke-direct {v7, p0}, Lname/kunes/android/launcher/activity/b/g;-><init>(Lname/kunes/android/launcher/activity/b/i;)V

    invoke-static {v0, v5, v6, v7}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    aput-object v0, v4, v8

    const/4 v0, 0x2

    iget-object v5, p0, Lname/kunes/android/launcher/activity/b/i;->a:Landroid/app/Activity;

    const v6, 0x7f060089

    const/16 v7, 0x2c

    new-instance v8, Lname/kunes/android/launcher/activity/b/f;

    invoke-direct {v8, p0}, Lname/kunes/android/launcher/activity/b/f;-><init>(Lname/kunes/android/launcher/activity/b/i;)V

    invoke-static {v5, v6, v7, v8}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Lname/kunes/android/widget/AccessibleListView;->a(Landroid/widget/Adapter;[Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/activity/b/i;->c:Landroid/app/Dialog;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/i;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
