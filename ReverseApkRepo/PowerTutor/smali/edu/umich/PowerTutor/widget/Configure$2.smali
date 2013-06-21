.class Ledu/umich/PowerTutor/widget/Configure$2;
.super Ljava/lang/Object;
.source "Configure.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/widget/Configure;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/widget/Configure;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/widget/Configure;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/widget/Configure$2;->this$0:Ledu/umich/PowerTutor/widget/Configure;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 101
    iget-object v0, p0, Ledu/umich/PowerTutor/widget/Configure$2;->this$0:Ledu/umich/PowerTutor/widget/Configure;

    invoke-virtual {v0}, Ledu/umich/PowerTutor/widget/Configure;->finish()V

    .line 102
    return-void
.end method
