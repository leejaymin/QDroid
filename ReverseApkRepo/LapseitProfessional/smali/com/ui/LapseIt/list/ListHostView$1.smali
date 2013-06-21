.class Lcom/ui/LapseIt/list/ListHostView$1;
.super Ljava/lang/Object;
.source "ListHostView.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/list/ListHostView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/list/ListHostView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/list/ListHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/list/ListHostView$1;->this$0:Lcom/ui/LapseIt/list/ListHostView;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "tabId"

    .prologue
    .line 59
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->cleanUp()V

    .line 60
    return-void
.end method
