.class Lcom/jaynux/app/measureActivity$6;
.super Ljava/lang/Object;
.source "measureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaynux/app/measureActivity;->dismissDialogSafely(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaynux/app/measureActivity;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/jaynux/app/measureActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jaynux/app/measureActivity$6;->this$0:Lcom/jaynux/app/measureActivity;

    iput p2, p0, Lcom/jaynux/app/measureActivity$6;->val$id:I

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 708
    :try_start_0
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$6;->this$0:Lcom/jaynux/app/measureActivity;

    iget v1, p0, Lcom/jaynux/app/measureActivity$6;->val$id:I

    invoke-virtual {v0, v1}, Lcom/jaynux/app/measureActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :goto_0
    return-void

    .line 709
    :catch_0
    move-exception v0

    goto :goto_0
.end method
