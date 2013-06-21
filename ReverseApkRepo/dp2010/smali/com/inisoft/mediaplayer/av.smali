.class public final Lcom/inisoft/mediaplayer/av;
.super Landroid/support/v4/app/FragmentPagerAdapter;


# instance fields
.field final a:Landroid/content/Context;

.field final synthetic b:Lcom/inisoft/mediaplayer/CommonListActivity;


# direct methods
.method public constructor <init>(Lcom/inisoft/mediaplayer/CommonListActivity;Landroid/support/v4/app/FragmentManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/av;->b:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object p3, p0, Lcom/inisoft/mediaplayer/av;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    invoke-static {}, Lcom/inisoft/mediaplayer/CommonListActivity;->c()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    invoke-static {p1}, Lcom/inisoft/mediaplayer/ar;->a(I)Lcom/inisoft/mediaplayer/ar;

    move-result-object v0

    return-object v0
.end method
