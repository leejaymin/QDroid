.class Ledu/umich/PowerTutor/ui/UMLogger$12;
.super Ljava/lang/Object;
.source "UMLogger.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/ui/UMLogger;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/UMLogger;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/ui/UMLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/UMLogger$12;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 281
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 282
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger$12;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/ui/UMLogger;->showDialog(I)V

    .line 283
    return-void
.end method
