.class Lcom/ui/LapseIt/project/TrimView$3;
.super Ljava/lang/Object;
.source "TrimView.java"

# interfaces
.implements Lcom/ui/LapseIt/project/OnTrimChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/TrimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/TrimView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/TrimView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/TrimView$3;->this$0:Lcom/ui/LapseIt/project/TrimView;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrimChangedListener(II)V
    .locals 2
    .parameter "startFrame"
    .parameter "endFrame"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView$3;->this$0:Lcom/ui/LapseIt/project/TrimView;

    #getter for: Lcom/ui/LapseIt/project/TrimView;->trimStartFrame:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/ui/LapseIt/project/TrimView;->access$3(Lcom/ui/LapseIt/project/TrimView;)Landroid/widget/EditText;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView$3;->this$0:Lcom/ui/LapseIt/project/TrimView;

    #getter for: Lcom/ui/LapseIt/project/TrimView;->trimEndFrame:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/ui/LapseIt/project/TrimView;->access$4(Lcom/ui/LapseIt/project/TrimView;)Landroid/widget/EditText;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 242
    return-void
.end method
