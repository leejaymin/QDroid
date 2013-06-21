.class Lcom/virtuallyabstract/eve/SkillBrowser$1;
.super Ljava/lang/Object;
.source "SkillBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virtuallyabstract/eve/SkillBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/virtuallyabstract/eve/SkillBrowser;


# direct methods
.method constructor <init>(Lcom/virtuallyabstract/eve/SkillBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/virtuallyabstract/eve/SkillBrowser$1;->this$0:Lcom/virtuallyabstract/eve/SkillBrowser;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillBrowser$1;->this$0:Lcom/virtuallyabstract/eve/SkillBrowser;

    #calls: Lcom/virtuallyabstract/eve/SkillBrowser;->showPlanner()V
    invoke-static {v0}, Lcom/virtuallyabstract/eve/SkillBrowser;->access$0(Lcom/virtuallyabstract/eve/SkillBrowser;)V

    return-void
.end method
