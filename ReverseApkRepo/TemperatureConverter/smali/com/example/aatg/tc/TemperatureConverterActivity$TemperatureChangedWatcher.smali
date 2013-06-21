.class public Lcom/example/aatg/tc/TemperatureConverterActivity$TemperatureChangedWatcher;
.super Ljava/lang/Object;
.source "TemperatureConverterActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/aatg/tc/TemperatureConverterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TemperatureChangedWatcher"
.end annotation


# instance fields
.field private final mDest:Lcom/example/aatg/tc/EditNumber;

.field private mOp:Lcom/example/aatg/tc/TemperatureConverter$OP;

.field private final mSource:Lcom/example/aatg/tc/EditNumber;

.field final synthetic this$0:Lcom/example/aatg/tc/TemperatureConverterActivity;


# direct methods
.method public constructor <init>(Lcom/example/aatg/tc/TemperatureConverterActivity;Lcom/example/aatg/tc/TemperatureConverter$OP;)V
    .locals 1
    .parameter
    .parameter "op"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/example/aatg/tc/TemperatureConverterActivity$TemperatureChangedWatcher;->this$0:Lcom/example/aatg/tc/TemperatureConverterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/example/aatg/tc/TemperatureConverter$OP;->C2F:Lcom/example/aatg/tc/TemperatureConverter$OP;

    if-ne p2, v0, :cond_0

    .line 37
    #getter for: Lcom/example/aatg/tc/TemperatureConverterActivity;->mCelsius:Lcom/example/aatg/tc/EditNumber;
    invoke-static {p1}, Lcom/example/aatg/tc/TemperatureConverterActivity;->access$2(Lcom/example/aatg/tc/TemperatureConverterActivity;)Lcom/example/aatg/tc/EditNumber;

    move-result-object v0

    iput-object v0, p0, Lcom/example/aatg/tc/TemperatureConverterActivity$TemperatureChangedWatcher;->mSource:Lcom/example/aatg/tc/EditNumber;

    .line 38
    #getter for: Lcom/example/aatg/tc/TemperatureConverterActivity;->mFahrenheit:Lcom/example/aatg/tc/EditNumber;
    invoke-static {p1}, Lcom/example/aatg/tc/TemperatureConverterActivity;->access$3(Lcom/example/aatg/tc/TemperatureConverterActivity;)Lcom/example/aatg/tc/EditNumber;

    move-result-object v0

    iput-object v0, p0, Lcom/example/aatg/tc/TemperatureConverterActivity$TemperatureChangedWatcher;->mDest:Lcom/example/aatg/tc/EditNumber;

    .line 44
    :goto_0
    iput-object p2, p0, Lcom/example/aatg/tc/TemperatureConverterActivity$TemperatureChangedWatcher;->mOp:Lcom/example/aatg/tc/TemperatureConverter$OP;

    .line 45
    return-void

    .line 41
    :cond_0
    #getter for: Lcom/example/aatg/tc/TemperatureConverterActivity;->mFahrenheit:Lcom/example/aatg/tc/EditNumber;
    invoke-static {p1}, Lcom/example/aatg/tc/TemperatureConverterActivity;->access$3(Lcom/example/aatg/tc/TemperatureConverterActivity;)Lcom/example/aatg/tc/EditNumber;

    move-result-object v0

    iput-object v0, p0, Lcom/example/aatg/tc/TemperatureConverterActivity$TemperatureChangedWatcher;->mSource:Lcom/example/aatg/tc/EditNumber;

    .line 42
    #getter for: Lcom/example/aatg/tc/TemperatureConverterActivity;->mCelsius:Lcom/example/aatg/tc/EditNumber;
    invoke-static {p1}, Lcom/example/aatg/tc/TemperatureConverterActivity;->access$2(Lcom/example/aatg/tc/TemperatureConverterActivity;)Lcom/example/aatg/tc/EditNumber;

    move-result-object v0

    iput-object v0, p0, Lcom/example/aatg/tc/TemperatureConverterActivity$TemperatureChangedWatcher;->mDest:Lcom/example/aatg/tc/EditNumber;

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 53
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 62
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 11
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 69
    iget-object v7, p0, Lcom/example/aatg/tc/TemperatureConverterActivity$TemperatureChangedWatcher;->mDest:Lcom/example/aatg/tc/EditNumber;

    invoke-virtual {v7}, Lcom/example/aatg/tc/EditNumber;->hasWindowFocus()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/example/aatg/tc/TemperatureConverterActivity$TemperatureChangedWatcher;->mDest:Lcom/example/aatg/tc/EditNumber;

    invoke-virtual {v7}, Lcom/example/aatg/tc/EditNumber;->hasFocus()Z

    move-result v7

    if-nez v7, :cond_0

    if-nez p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, str:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 75
    iget-object v7, p0, Lcom/example/aatg/tc/TemperatureConverterActivity$TemperatureChangedWatcher;->mDest:Lcom/example/aatg/tc/EditNumber;

    const-string v8, ""

    invoke-virtual {v7, v8}, Lcom/example/aatg/tc/EditNumber;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :cond_2
    :try_start_0
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 81
    .local v5, temp:D
    iget-object v7, p0, Lcom/example/aatg/tc/TemperatureConverterActivity$TemperatureChangedWatcher;->mOp:Lcom/example/aatg/tc/TemperatureConverter$OP;

    sget-object v8, Lcom/example/aatg/tc/TemperatureConverter$OP;->C2F:Lcom/example/aatg/tc/TemperatureConverter$OP;

    if-ne v7, v8, :cond_3

    invoke-static {v5, v6}, Lcom/example/aatg/tc/TemperatureConverter;->celsiusToFahrenheit(D)D

    move-result-wide v1

    .line 83
    .local v1, result:D
    :goto_1
    const-string v7, "%.2f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, resultString:Ljava/lang/String;
    iget-object v7, p0, Lcom/example/aatg/tc/TemperatureConverterActivity$TemperatureChangedWatcher;->mDest:Lcom/example/aatg/tc/EditNumber;

    invoke-virtual {v7, v1, v2}, Lcom/example/aatg/tc/EditNumber;->setNumber(D)V

    .line 85
    iget-object v7, p0, Lcom/example/aatg/tc/TemperatureConverterActivity$TemperatureChangedWatcher;->mDest:Lcom/example/aatg/tc/EditNumber;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/example/aatg/tc/EditNumber;->setSelection(I)V

    goto :goto_0

    .line 86
    .end local v1           #result:D
    .end local v3           #resultString:Ljava/lang/String;
    .end local v5           #temp:D
    :catch_0
    move-exception v7

    goto :goto_0

    .line 82
    .restart local v5       #temp:D
    :cond_3
    invoke-static {v5, v6}, Lcom/example/aatg/tc/TemperatureConverter;->fahrenheitToCelsius(D)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    goto :goto_1

    .line 91
    .end local v5           #temp:D
    :catch_1
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/example/aatg/tc/TemperatureConverterActivity$TemperatureChangedWatcher;->mSource:Lcom/example/aatg/tc/EditNumber;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ERROR: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/example/aatg/tc/EditNumber;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
