.class Lcom/ui/LapseIt/capture/ScheduleView$3;
.super Ljava/lang/Object;
.source "ScheduleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/capture/ScheduleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/capture/ScheduleView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/ScheduleView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/ScheduleView$3;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/capture/ScheduleView$3;)Lcom/ui/LapseIt/capture/ScheduleView;
    .locals 1
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/ui/LapseIt/capture/ScheduleView$3;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 191
    new-instance v0, Lcom/ui/LapseIt/capture/ScheduleView$3$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/capture/ScheduleView$3$1;-><init>(Lcom/ui/LapseIt/capture/ScheduleView$3;)V

    .line 207
    .local v0, dialogResponseHandler:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ui/LapseIt/capture/ScheduleView$3;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 208
    const v2, 0x7f080085

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 209
    const v2, 0x7f080086

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 210
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 211
    const-string v2, "Yes"

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 212
    const-string v2, "No"

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 214
    return-void
.end method
