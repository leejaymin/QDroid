.class Lcom/battlesheep/marblebox/activities/MainActivity$5;
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
    iput-object p1, p0, Lcom/battlesheep/marblebox/activities/MainActivity$5;->this$0:Lcom/battlesheep/marblebox/activities/MainActivity;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/MainActivity$5;->this$0:Lcom/battlesheep/marblebox/activities/MainActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://search?q=pub:\"Battlesheep labs\""

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/battlesheep/marblebox/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 193
    return-void
.end method
