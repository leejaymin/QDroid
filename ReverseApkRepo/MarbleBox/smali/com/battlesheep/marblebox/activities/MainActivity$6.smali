.class Lcom/battlesheep/marblebox/activities/MainActivity$6;
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
    iput-object p1, p0, Lcom/battlesheep/marblebox/activities/MainActivity$6;->this$0:Lcom/battlesheep/marblebox/activities/MainActivity;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/MainActivity$6;->this$0:Lcom/battlesheep/marblebox/activities/MainActivity;

    sget-object v1, Lcom/battlesheep/marblebox/LevelParameters;->Easy:Lcom/battlesheep/marblebox/LevelParameters;

    #calls: Lcom/battlesheep/marblebox/activities/MainActivity;->startGame(Lcom/battlesheep/marblebox/LevelParameters;)V
    invoke-static {v0, v1}, Lcom/battlesheep/marblebox/activities/MainActivity;->access$0(Lcom/battlesheep/marblebox/activities/MainActivity;Lcom/battlesheep/marblebox/LevelParameters;)V

    .line 203
    return-void
.end method
