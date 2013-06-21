.class Lcom/battlesheep/marblebox/activities/GameActivity$1;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/battlesheep/marblebox/activities/GameActivity;->abandonGameConfirmation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/battlesheep/marblebox/activities/GameActivity;


# direct methods
.method constructor <init>(Lcom/battlesheep/marblebox/activities/GameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/battlesheep/marblebox/activities/GameActivity$1;->this$0:Lcom/battlesheep/marblebox/activities/GameActivity;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 191
    invoke-static {}, Lcom/stickycoding/rokon/GameThread;->stopThread()V

    .line 192
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/GameActivity$1;->this$0:Lcom/battlesheep/marblebox/activities/GameActivity;

    invoke-virtual {v0}, Lcom/battlesheep/marblebox/activities/GameActivity;->finish()V

    .line 193
    return-void
.end method
