.class Lcom/fleapapa/helper/ItemEdit$18$1;
.super Ljava/lang/Object;
.source "ItemEdit.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemEdit$18;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fleapapa/helper/ItemEdit$18;

.field private final synthetic val$dedit:Landroid/widget/EditText;

.field private final synthetic val$dtime:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemEdit$18;[Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemEdit$18$1;->this$1:Lcom/fleapapa/helper/ItemEdit$18;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemEdit$18$1;->val$dtime:[Ljava/lang/String;

    iput-object p3, p0, Lcom/fleapapa/helper/ItemEdit$18$1;->val$dedit:Landroid/widget/EditText;

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 6
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    const/4 v5, 0x0

    .line 421
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$18$1;->val$dtime:[Ljava/lang/String;

    const-string v1, "%d-%d-%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    add-int/lit8 v4, p3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 422
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$18$1;->val$dedit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit$18$1;->val$dtime:[Ljava/lang/String;

    aget-object v1, v1, v5

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 423
    return-void
.end method
