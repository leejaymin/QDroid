.class Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$2;
.super Ljava/lang/Object;
.source "CategoriesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$nix$apps$androlib$wallpapers$datamanager$category$catType:[I


# instance fields
.field final synthetic this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;


# direct methods
.method static synthetic $SWITCH_TABLE$com$nix$apps$androlib$wallpapers$datamanager$category$catType()[I
    .locals 3

    .prologue
    .line 76
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$2;->$SWITCH_TABLE$com$nix$apps$androlib$wallpapers$datamanager$category$catType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->values()[Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->favs:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->last:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->normal:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->random:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->top:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->topfavs:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->topinstalls:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->toprated:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$2;->$SWITCH_TABLE$com$nix$apps$androlib$wallpapers$datamanager$category$catType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$2;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .line 78
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$2;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;

    #getter for: Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->access$0(Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;

    invoke-virtual {v0, p3}, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;->getItem(I)Lcom/nix/apps/androlib/wallpapers/datamanager/category;

    move-result-object v0

    iget-object v0, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->CatID:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$2;->$SWITCH_TABLE$com$nix$apps$androlib$wallpapers$datamanager$category$catType()[I

    move-result-object v1

    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$2;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;

    #getter for: Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->access$0(Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;

    invoke-virtual {v0, p3}, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;->getItem(I)Lcom/nix/apps/androlib/wallpapers/datamanager/category;

    move-result-object v0

    iget-object v0, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->Type:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$2;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->finish()V

    .line 116
    return-void

    .line 83
    :pswitch_1
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->mainApp:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchMyFavsWallpapers()V

    goto :goto_0

    .line 88
    :pswitch_2
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->mainApp:Lcom/nix/apps/androlib/wallpapers/MainWall;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchLastWallpapers(I)V

    goto :goto_0

    .line 93
    :pswitch_3
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->mainApp:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchRandomWallpapers()V

    goto :goto_0

    .line 98
    :pswitch_4
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->mainApp:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopRated()V

    goto :goto_0

    .line 103
    :pswitch_5
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->mainApp:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopFavs()V

    goto :goto_0

    .line 108
    :pswitch_6
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->mainApp:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopInstalls()V

    goto :goto_0

    .line 113
    :cond_0
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->mainApp:Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$2;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;

    #getter for: Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->access$0(Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;

    invoke-virtual {v0, p3}, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;->getItem(I)Lcom/nix/apps/androlib/wallpapers/datamanager/category;

    move-result-object v0

    iget-object v0, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->CatID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
