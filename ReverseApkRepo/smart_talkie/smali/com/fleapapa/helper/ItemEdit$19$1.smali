.class Lcom/fleapapa/helper/ItemEdit$19$1;
.super Ljava/lang/Object;
.source "ItemEdit.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemEdit$19;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fleapapa/helper/ItemEdit$19;

.field private final synthetic val$dtime:[Ljava/lang/String;

.field private final synthetic val$tedit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemEdit$19;[Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemEdit$19$1;->this$1:Lcom/fleapapa/helper/ItemEdit$19;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemEdit$19$1;->val$dtime:[Ljava/lang/String;

    iput-object p3, p0, Lcom/fleapapa/helper/ItemEdit$19$1;->val$tedit:Landroid/widget/EditText;

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 6
    .parameter "view"
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/4 v5, 0x1

    .line 441
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$19$1;->val$dtime:[Ljava/lang/String;

    const-string v1, "%d:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 442
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$19$1;->val$tedit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit$19$1;->val$dtime:[Ljava/lang/String;

    aget-object v1, v1, v5

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 443
    return-void
.end method
