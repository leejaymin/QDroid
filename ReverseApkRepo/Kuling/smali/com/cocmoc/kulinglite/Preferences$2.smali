.class Lcom/cocmoc/kulinglite/Preferences$2;
.super Ljava/lang/Object;
.source "Preferences.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cocmoc/kulinglite/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cocmoc/kulinglite/Preferences;


# direct methods
.method constructor <init>(Lcom/cocmoc/kulinglite/Preferences;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cocmoc/kulinglite/Preferences$2;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Preferences$2;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #setter for: Lcom/cocmoc/kulinglite/Preferences;->mHour:I
    invoke-static {v0, p2}, Lcom/cocmoc/kulinglite/Preferences;->access$1(Lcom/cocmoc/kulinglite/Preferences;I)V

    .line 345
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Preferences$2;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #setter for: Lcom/cocmoc/kulinglite/Preferences;->mMinute:I
    invoke-static {v0, p3}, Lcom/cocmoc/kulinglite/Preferences;->access$2(Lcom/cocmoc/kulinglite/Preferences;I)V

    .line 346
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Preferences$2;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    mul-int/lit8 v1, p2, 0x3c

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/cocmoc/kulinglite/Preferences;->updateRate:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cocmoc/kulinglite/Preferences;->access$3(Lcom/cocmoc/kulinglite/Preferences;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Preferences$2;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Preferences;->updateRateTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cocmoc/kulinglite/Preferences$2;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->updateRateTag:Ljava/lang/String;
    invoke-static {v2}, Lcom/cocmoc/kulinglite/Preferences;->access$4(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cocmoc/kulinglite/Preferences$2;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->updateRate:Ljava/lang/String;
    invoke-static {v2}, Lcom/cocmoc/kulinglite/Preferences;->access$5(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cocmoc/kulinglite/Preferences$2;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->updateRateTag2:Ljava/lang/String;
    invoke-static {v2}, Lcom/cocmoc/kulinglite/Preferences;->access$6(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    return-void
.end method
