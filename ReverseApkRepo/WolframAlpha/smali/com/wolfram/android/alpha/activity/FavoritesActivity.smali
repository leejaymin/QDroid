.class public Lcom/wolfram/android/alpha/activity/FavoritesActivity;
.super Lcom/wolfram/android/alpha/activity/Activity_modified;
.source "FavoritesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wolfram/android/alpha/activity/FavoritesActivity$FavoritesAdapter;
    }
.end annotation


# static fields
.field private static final DELETE_FAVORITE_MENU_ID:I = 0x2b

.field public static final FAVORITES_ASSUMPTIONS_KEY:Ljava/lang/String; = "com.wolfram.android.alpha.favorites_assumptions"

.field public static final FAVORITES_INPUT_KEY:Ljava/lang/String; = "com.wolfram.android.alpha.favorites_input"

.field public static final FAVORITES_PODSTATES_IDS_KEY:Ljava/lang/String; = "com.wolfram.android.alpha.favorites_podstates_ids"

.field public static final FAVORITES_PODSTATES_INPUTS_KEY:Ljava/lang/String; = "com.wolfram.android.alpha.favorites_podstates_inputs"

.field private static final OPEN_FAVORITE_MENU_ID:I = 0x2a


# instance fields
.field assumptionsLabel:Ljava/lang/String;

.field assumptionsLabelPlural:Ljava/lang/String;

.field favoritesListView:Landroid/widget/ListView;

.field inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;-><init>()V

    .line 131
    return-void
.end method

.method public static fillIntentToLaunchFavorite(Lcom/wolfram/android/alpha/FavoritesRecord;Landroid/content/Intent;)V
    .locals 2
    .parameter "fr"
    .parameter "intent"

    .prologue
    .line 85
    const-string v0, "com.wolfram.android.alpha.favorites_input"

    iget-object v1, p0, Lcom/wolfram/android/alpha/FavoritesRecord;->input:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v0, "com.wolfram.android.alpha.favorites_assumptions"

    iget-object v1, p0, Lcom/wolfram/android/alpha/FavoritesRecord;->assumptions:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v0, "com.wolfram.android.alpha.favorites_podstates_inputs"

    iget-object v1, p0, Lcom/wolfram/android/alpha/FavoritesRecord;->podStateInputs:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v0, "com.wolfram.android.alpha.favorites_podstates_ids"

    iget-object v1, p0, Lcom/wolfram/android/alpha/FavoritesRecord;->podStateIDs:[J

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 89
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 108
    .local v2, favoritesItem:Landroid/view/View;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 125
    .end local p0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 110
    .restart local p0
    :pswitch_0
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity;->favoritesListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/wolfram/android/alpha/activity/FavoritesActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 114
    :pswitch_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wolfram/android/alpha/FavoritesRecord;

    .line 115
    .local v7, rec:Lcom/wolfram/android/alpha/FavoritesRecord;
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getFavorites()Lcom/wolfram/android/alpha/Favorites;

    move-result-object v6

    .line 116
    .local v6, favorites:Lcom/wolfram/android/alpha/Favorites;
    invoke-virtual {v6, v7}, Lcom/wolfram/android/alpha/Favorites;->remove(Lcom/wolfram/android/alpha/FavoritesRecord;)V

    .line 117
    invoke-virtual {v6}, Lcom/wolfram/android/alpha/Favorites;->write()V

    .line 119
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity;->favoritesListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/wolfram/android/alpha/activity/FavoritesActivity$FavoritesAdapter;

    const v1, 0x7f080009

    invoke-virtual {v2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/FavoritesActivity$FavoritesAdapter;->delete_entry(I)V

    .line 121
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity;->favoritesListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity$FavoritesAdapter;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/FavoritesActivity$FavoritesAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/activity/FavoritesActivity;->setContentView(I)V

    .line 61
    const v0, 0x7f0e0022

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/activity/FavoritesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity;->favoritesListView:Landroid/widget/ListView;

    .line 62
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity;->favoritesListView:Landroid/widget/ListView;

    new-instance v1, Lcom/wolfram/android/alpha/activity/FavoritesActivity$FavoritesAdapter;

    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getFavorites()Lcom/wolfram/android/alpha/Favorites;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/wolfram/android/alpha/activity/FavoritesActivity$FavoritesAdapter;-><init>(Lcom/wolfram/android/alpha/activity/FavoritesActivity;Lcom/wolfram/android/alpha/Favorites;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity;->favoritesListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity;->favoritesListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/FavoritesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity;->assumptionsLabel:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/FavoritesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity;->assumptionsLabelPlural:Ljava/lang/String;

    .line 69
    invoke-static {p0}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->from(Landroid/content/Context;)Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity;->inflater:Landroid/view/LayoutInflater;

    .line 70
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    const/16 v0, 0x2a

    const v1, 0x7f0c0057

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 100
    const/16 v0, 0x2b

    const v1, 0x7f0c0058

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 101
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "favItem"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wolfram/android/alpha/FavoritesRecord;

    .line 76
    .local v0, fr:Lcom/wolfram/android/alpha/FavoritesRecord;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/wolfram/android/alpha/activity/FavoritesActivity;->fillIntentToLaunchFavorite(Lcom/wolfram/android/alpha/FavoritesRecord;Landroid/content/Intent;)V

    .line 78
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/wolfram/android/alpha/activity/FavoritesActivity;->setResult(ILandroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/FavoritesActivity;->finish()V

    .line 80
    return-void
.end method
