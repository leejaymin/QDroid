.class Lcom/redlynx/drawrace2/DrawRace2TextInput$1$1;
.super Ljava/lang/Object;
.source "DrawRace2TextInput.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redlynx/drawrace2/DrawRace2TextInput$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redlynx/drawrace2/DrawRace2TextInput$1;


# direct methods
.method constructor <init>(Lcom/redlynx/drawrace2/DrawRace2TextInput$1;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/redlynx/drawrace2/DrawRace2TextInput$1$1;->this$0:Lcom/redlynx/drawrace2/DrawRace2TextInput$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 163
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->onFormClosed(Z)V

    .line 164
    return-void
.end method
