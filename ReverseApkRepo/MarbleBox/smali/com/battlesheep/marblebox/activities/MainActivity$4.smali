.class Lcom/battlesheep/marblebox/activities/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/battlesheep/marblebox/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/battlesheep/marblebox/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/battlesheep/marblebox/activities/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/battlesheep/marblebox/activities/MainActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/MainActivity;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/MainActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/battlesheep/marblebox/activities/MainActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/MainActivity;

    invoke-virtual {v2}, Lcom/battlesheep/marblebox/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/battlesheep/marblebox/activities/HelpActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/battlesheep/marblebox/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 183
    return-void
.end method
