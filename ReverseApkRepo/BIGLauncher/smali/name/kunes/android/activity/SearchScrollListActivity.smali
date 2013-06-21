.class public abstract Lname/kunes/android/activity/SearchScrollListActivity;
.super Lname/kunes/android/activity/ScrollListActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/activity/ScrollListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a_(Ljava/lang/String;)V
.end method

.method protected b_()I
    .locals 1

    const v0, 0x7f03000d

    return v0
.end method

.method protected final e()Lname/kunes/android/widget/AccessibleListView;
    .locals 1

    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lname/kunes/android/activity/SearchScrollListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lname/kunes/android/widget/AccessibleListView;

    return-object v0
.end method

.method protected final h()Landroid/widget/EditText;
    .locals 1

    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lname/kunes/android/activity/SearchScrollListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method protected abstract h_()Ljava/lang/String;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lname/kunes/android/activity/ScrollListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lname/kunes/android/activity/SearchScrollListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lname/kunes/android/activity/SearchScrollListActivity;->h()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lname/kunes/android/activity/SearchScrollListActivity;->h_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lname/kunes/android/activity/e;

    invoke-direct {v1, p0}, Lname/kunes/android/activity/e;-><init>(Lname/kunes/android/activity/SearchScrollListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lname/kunes/android/activity/SearchScrollListActivity;->h()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    :goto_0
    if-eqz v2, :cond_0

    const/16 v1, 0x8

    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setVisibility(I)V

    if-nez v2, :cond_1

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    invoke-super {p0}, Lname/kunes/android/activity/ScrollListActivity;->onSearchRequested()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    return v0

    :cond_2
    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
