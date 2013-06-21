.class public Lcom/wareone/tappmt/Settings;
.super Landroid/app/Activity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wareone/tappmt/Settings$SettingAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_data:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/wareone/tappmt/Settings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/Settings;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Settings;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/wareone/tappmt/Settings;->m_data:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const v1, 0x7f03001a

    invoke-virtual {p0, v1}, Lcom/wareone/tappmt/Settings;->setContentView(I)V

    .line 125
    const v1, 0x7f09005f

    invoke-virtual {p0, v1}, Lcom/wareone/tappmt/Settings;->setTitle(I)V

    .line 126
    const v1, 0x7f0c0069

    invoke-virtual {p0, v1}, Lcom/wareone/tappmt/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 128
    .local v0, lv_settings:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/wareone/tappmt/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wareone/tappmt/Settings;->m_data:[Ljava/lang/String;

    .line 129
    new-instance v1, Lcom/wareone/tappmt/Settings$SettingAdapter;

    invoke-direct {v1, p0, p0}, Lcom/wareone/tappmt/Settings$SettingAdapter;-><init>(Lcom/wareone/tappmt/Settings;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    new-instance v1, Lcom/wareone/tappmt/Settings$1;

    invoke-direct {v1, p0}, Lcom/wareone/tappmt/Settings$1;-><init>(Lcom/wareone/tappmt/Settings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 188
    return-void
.end method
