.class Lcom/cocmoc/kulinglite/Preferences$3;
.super Ljava/lang/Object;
.source "Preferences.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cocmoc/kulinglite/Preferences;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cocmoc/kulinglite/Preferences;


# direct methods
.method constructor <init>(Lcom/cocmoc/kulinglite/Preferences;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cocmoc/kulinglite/Preferences$3;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Preferences$3;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cocmoc/kulinglite/Preferences;->showDialog(I)V

    .line 167
    return-void
.end method
