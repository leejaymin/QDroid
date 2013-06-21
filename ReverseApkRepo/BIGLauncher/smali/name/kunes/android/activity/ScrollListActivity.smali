.class public abstract Lname/kunes/android/activity/ScrollListActivity;
.super Lname/kunes/android/activity/DefaultActivity;


# static fields
.field private static a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lname/kunes/android/activity/ScrollListActivity;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/activity/DefaultActivity;-><init>()V

    return-void
.end method

.method private d()Lname/kunes/android/launcher/p;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lname/kunes/android/activity/ScrollListActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lname/kunes/android/activity/ScrollListActivity;->a:Ljava/util/HashMap;

    new-instance v2, Lname/kunes/android/launcher/p;

    invoke-direct {v2}, Lname/kunes/android/launcher/p;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lname/kunes/android/activity/ScrollListActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lname/kunes/android/launcher/p;

    invoke-virtual {p0}, Lname/kunes/android/activity/ScrollListActivity;->e()Lname/kunes/android/widget/AccessibleListView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lname/kunes/android/launcher/p;->a(Landroid/widget/ListView;)Lname/kunes/android/launcher/p;

    move-result-object v0

    sget-object v2, Lname/kunes/android/activity/ScrollListActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected b_()I
    .locals 1

    const v0, 0x7f030005

    return v0
.end method

.method protected final c_()I
    .locals 1

    invoke-virtual {p0}, Lname/kunes/android/activity/ScrollListActivity;->e()Lname/kunes/android/widget/AccessibleListView;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/widget/AccessibleListView;->getId()I

    move-result v0

    return v0
.end method

.method protected e()Lname/kunes/android/widget/AccessibleListView;
    .locals 1

    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lname/kunes/android/activity/ScrollListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lname/kunes/android/widget/AccessibleListView;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lname/kunes/android/activity/DefaultActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lname/kunes/android/activity/ScrollListActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lname/kunes/android/launcher/p;

    invoke-direct {v2}, Lname/kunes/android/launcher/p;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lname/kunes/android/activity/DefaultActivity;->onPause()V

    invoke-direct {p0}, Lname/kunes/android/activity/ScrollListActivity;->d()Lname/kunes/android/launcher/p;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/launcher/p;->a()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lname/kunes/android/activity/DefaultActivity;->onResume()V

    invoke-direct {p0}, Lname/kunes/android/activity/ScrollListActivity;->d()Lname/kunes/android/launcher/p;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/launcher/p;->b()V

    return-void
.end method
