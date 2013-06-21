.class public Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;
.super Ljava/lang/Object;
.source "TMainMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TMainMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public Icon:Landroid/widget/ImageView;

.field public LayoutType:I

.field public checkedTextView:Landroid/widget/CheckedTextView;

.field public textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;


# direct methods
.method public constructor <init>(Lcom/rookiestudio/perfectviewer/TMainMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 829
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SetText(Ljava/lang/String;)V
    .locals 2
    .parameter "Text"

    .prologue
    .line 836
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->LayoutType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->LayoutType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    :goto_0
    return-void

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
