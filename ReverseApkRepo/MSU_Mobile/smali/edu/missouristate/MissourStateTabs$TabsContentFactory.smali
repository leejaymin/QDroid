.class Ledu/missouristate/MissourStateTabs$TabsContentFactory;
.super Ljava/lang/Object;
.source "MissourStateTabs.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/missouristate/MissourStateTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabsContentFactory"
.end annotation


# instance fields
.field final synthetic this$0:Ledu/missouristate/MissourStateTabs;


# direct methods
.method private constructor <init>(Ledu/missouristate/MissourStateTabs;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Ledu/missouristate/MissourStateTabs$TabsContentFactory;->this$0:Ledu/missouristate/MissourStateTabs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ledu/missouristate/MissourStateTabs;Ledu/missouristate/MissourStateTabs$TabsContentFactory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ledu/missouristate/MissourStateTabs$TabsContentFactory;-><init>(Ledu/missouristate/MissourStateTabs;)V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 41
    iget-object v0, p0, Ledu/missouristate/MissourStateTabs$TabsContentFactory;->this$0:Ledu/missouristate/MissourStateTabs;

    #getter for: Ledu/missouristate/MissourStateTabs;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Ledu/missouristate/MissourStateTabs;->access$0(Ledu/missouristate/MissourStateTabs;)Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method
