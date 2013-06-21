.class Lexam/Widget/Measuring$1;
.super Ljava/lang/Object;
.source "Measuring.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Widget/Measuring;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Widget/Measuring;

.field private final synthetic val$meas:Lexam/Widget/MeasView;

.field private final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lexam/Widget/Measuring;Landroid/widget/EditText;Lexam/Widget/MeasView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Widget/Measuring$1;->this$0:Lexam/Widget/Measuring;

    iput-object p2, p0, Lexam/Widget/Measuring$1;->val$text:Landroid/widget/EditText;

    iput-object p3, p0, Lexam/Widget/Measuring$1;->val$meas:Lexam/Widget/MeasView;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lexam/Widget/Measuring$1;->val$text:Landroid/widget/EditText;

    iget-object v1, p0, Lexam/Widget/Measuring$1;->val$meas:Lexam/Widget/MeasView;

    iget-object v1, v1, Lexam/Widget/MeasView;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 22
    return-void
.end method
