.class Lcom/kt/olleh/inapp/Purchase$2;
.super Ljava/lang/Object;
.source "Purchase.java"

# interfaces
.implements Lcom/kt/olleh/inapp/OnInAppListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kt/olleh/inapp/Purchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kt/olleh/inapp/Purchase;


# direct methods
.method constructor <init>(Lcom/kt/olleh/inapp/Purchase;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    .line 1319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "errorCode"
    .parameter "msg"

    .prologue
    .line 1430
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_progress:Lcom/kt/olleh/inapp/dialog/DialogProgress;
    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$2(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogProgress;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1431
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v2, 0x3ec

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 1435
    :cond_0
    const-string v1, "B011"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1437
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 1439
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;
    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$18(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1440
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;
    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$18(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\ud578\ub4dc\ud3f0 \ubcf4\uc548\ubc88\ud638\uac00 \ud2c0\ub838\uc2b5\ub2c8\ub2e4. \ub2e4\uc2dc \uc785\ub825\ud574 \uc8fc\uc2ed\uc2dc\uc624(\uc624\ub958\ud69f\uc218:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    :cond_1
    :goto_0
    return-void

    .line 1441
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    .line 1442
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;
    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$12(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1443
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;
    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$12(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->close()V

    .line 1445
    :cond_3
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v2, "\ud578\ub4dc\ud3f0 \ubcf4\uc548\ubc88\ud638 \uc624\ub958 \uc548\ub0b4"

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Title:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->access$17(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1446
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v2, "\ubcf4\uc548\ubc88\ud638 \uc785\ub825 5\ud68c \uc774\uc0c1 \uc624\ub958 \uc785\ub2c8\ub2e4.\n\n\ud578\ub4dc\ud3f0 \ubcf4\uc548\ubc88\ud638\ub97c \ubd84\uc2e4\ud558\uc168\ub2e4\uba74\nolleh\ub9c8\ucf13> My> \ubcf4\uc548\ubc88\ud638\uc5d0\uc11c \ubcf4\uc548\ubc88\ud638\ub97c \ud574\uc81c \ub610\ub294 \ubcc0\uacbd\ud558\uc5ec \uc8fc\uc2ed\uc2dc\uc624."

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->access$6(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1447
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #setter for: Lcom/kt/olleh/inapp/Purchase;->errorCode:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/kt/olleh/inapp/Purchase;->access$19(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1448
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1450
    :catch_0
    move-exception v0

    .line 1452
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 1456
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_4
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;
    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$18(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1457
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;
    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$18(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V
    .locals 10
    .parameter "api"
    .parameter "data"

    .prologue
    const/16 v9, 0x3ea

    const/4 v8, 0x2

    const/16 v7, 0x3f3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1327
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_progress:Lcom/kt/olleh/inapp/dialog/DialogProgress;
    invoke-static {v3}, Lcom/kt/olleh/inapp/Purchase;->access$2(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogProgress;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "getDiDetail"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1328
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v4, 0x3ec

    invoke-virtual {v3, v4}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 1330
    :cond_0
    const-string v3, "getDiDetail"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, p2

    .line 1331
    check-cast v2, Lcom/kt/olleh/inapp/net/ResDIDetail;

    .line 1333
    .local v2, res:Lcom/kt/olleh/inapp/net/ResDIDetail;
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v2}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getPrice()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mItem_Price:I
    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Purchase;->access$4(Lcom/kt/olleh/inapp/Purchase;I)V

    .line 1334
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v2}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getDiTitle()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Purchase;->access$5(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1335
    const-string v1, "\ucc98\ub9ac\uc911"

    .line 1336
    .local v1, msg:Ljava/lang/String;
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/kt/olleh/inapp/Purchase;->access$6(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1338
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v4, "\uad6c\ub9e4"

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Purchase;->access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1339
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v4, "\ucde8\uc18c"

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_02:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Purchase;->access$8(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1340
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mIsPayInformation:Z
    invoke-static {v3, v6}, Lcom/kt/olleh/inapp/Purchase;->access$9(Lcom/kt/olleh/inapp/Purchase;Z)V

    .line 1342
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v3}, Lcom/kt/olleh/inapp/Purchase;->CheckPin()V

    .line 1426
    .end local v1           #msg:Ljava/lang/String;
    .end local v2           #res:Lcom/kt/olleh/inapp/net/ResDIDetail;
    :cond_1
    :goto_0
    return-void

    .line 1344
    :cond_2
    const-string v3, "buyDi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v2, p2

    .line 1345
    check-cast v2, Lcom/kt/olleh/inapp/net/ResDIBuy;

    .line 1347
    .local v2, res:Lcom/kt/olleh/inapp/net/ResDIBuy;
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iget-object v4, v2, Lcom/kt/olleh/inapp/net/ResDIBuy;->mTr_id:Ljava/lang/String;

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mTr_ID:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Purchase;->access$10(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1348
    const-string v3, "0"

    iget-object v4, p2, Lcom/kt/olleh/inapp/net/Response;->mCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1349
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v4, "\ud655\uc778"

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Purchase;->access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1350
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v4, "\uacb0\uc81c\uac00 \uc644\ub8cc\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Purchase;->access$6(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1351
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mIsPayInformation:Z
    invoke-static {v3, v5}, Lcom/kt/olleh/inapp/Purchase;->access$9(Lcom/kt/olleh/inapp/Purchase;Z)V

    .line 1352
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z
    invoke-static {v3}, Lcom/kt/olleh/inapp/Purchase;->access$11(Lcom/kt/olleh/inapp/Purchase;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1359
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;
    invoke-static {v3}, Lcom/kt/olleh/inapp/Purchase;->access$12(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1360
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;
    invoke-static {v3}, Lcom/kt/olleh/inapp/Purchase;->access$12(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kt/olleh/inapp/dialog/DialogPay;->close()V

    .line 1362
    :cond_3
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z
    invoke-static {v3, v5}, Lcom/kt/olleh/inapp/Purchase;->access$13(Lcom/kt/olleh/inapp/Purchase;Z)V

    .line 1363
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I
    invoke-static {v3, v6}, Lcom/kt/olleh/inapp/Purchase;->access$14(Lcom/kt/olleh/inapp/Purchase;I)V

    .line 1364
    const/16 v3, 0x3f5

    sput v3, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 1365
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v3, v9}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto :goto_0

    .line 1367
    :cond_4
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I
    invoke-static {v3, v6}, Lcom/kt/olleh/inapp/Purchase;->access$14(Lcom/kt/olleh/inapp/Purchase;I)V

    .line 1368
    const/16 v3, 0x3ff

    sput v3, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 1369
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v4, 0x3f0

    invoke-virtual {v3, v4}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto :goto_0

    .line 1373
    .end local v2           #res:Lcom/kt/olleh/inapp/net/ResDIBuy;
    :cond_5
    const-string v3, "checkShowId"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v2, p2

    .line 1374
    check-cast v2, Lcom/kt/olleh/inapp/net/ResCheckShowId;

    .line 1380
    .local v2, res:Lcom/kt/olleh/inapp/net/ResCheckShowId;
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v3}, Lcom/kt/olleh/inapp/Purchase;->purchaseGetInfo()V

    goto :goto_0

    .line 1381
    .end local v2           #res:Lcom/kt/olleh/inapp/net/ResCheckShowId;
    :cond_6
    const-string v3, "CheckPin"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v2, p2

    .line 1382
    check-cast v2, Lcom/kt/olleh/inapp/net/ResCheckPin;

    .line 1383
    .local v2, res:Lcom/kt/olleh/inapp/net/ResCheckPin;
    invoke-virtual {v2}, Lcom/kt/olleh/inapp/net/ResCheckPin;->getmPin_set()Ljava/lang/String;

    move-result-object v0

    .line 1384
    .local v0, isPin:Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 1385
    const-string v3, "Y"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1386
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z
    invoke-static {v3, v6}, Lcom/kt/olleh/inapp/Purchase;->access$13(Lcom/kt/olleh/inapp/Purchase;Z)V

    .line 1393
    :goto_1
    const-string v1, "\ud574\ub2f9 \uc544\uc774\ud15c\uc744 \uad6c\ub9e4\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    .line 1394
    .restart local v1       #msg:Ljava/lang/String;
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/kt/olleh/inapp/Purchase;->access$6(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1396
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z
    invoke-static {v3}, Lcom/kt/olleh/inapp/Purchase;->access$11(Lcom/kt/olleh/inapp/Purchase;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1397
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I
    invoke-static {v3, v8}, Lcom/kt/olleh/inapp/Purchase;->access$14(Lcom/kt/olleh/inapp/Purchase;I)V

    .line 1398
    sput v7, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 1399
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v3, v9}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto/16 :goto_0

    .line 1388
    .end local v1           #msg:Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z
    invoke-static {v3, v5}, Lcom/kt/olleh/inapp/Purchase;->access$13(Lcom/kt/olleh/inapp/Purchase;Z)V

    goto :goto_1

    .line 1391
    :cond_8
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z
    invoke-static {v3, v5}, Lcom/kt/olleh/inapp/Purchase;->access$13(Lcom/kt/olleh/inapp/Purchase;Z)V

    goto :goto_1

    .line 1401
    .restart local v1       #msg:Ljava/lang/String;
    :cond_9
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #calls: Lcom/kt/olleh/inapp/Purchase;->getCheckYN()V
    invoke-static {v3}, Lcom/kt/olleh/inapp/Purchase;->access$15(Lcom/kt/olleh/inapp/Purchase;)V

    .line 1402
    const/16 v3, 0x3fd

    sput v3, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 1403
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z
    invoke-static {v3}, Lcom/kt/olleh/inapp/Purchase;->access$16(Lcom/kt/olleh/inapp/Purchase;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1404
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/4 v4, 0x3

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I
    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Purchase;->access$14(Lcom/kt/olleh/inapp/Purchase;I)V

    .line 1405
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v4, 0x3f0

    invoke-virtual {v3, v4}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto/16 :goto_0

    .line 1407
    :cond_a
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I
    invoke-static {v3, v8}, Lcom/kt/olleh/inapp/Purchase;->access$14(Lcom/kt/olleh/inapp/Purchase;I)V

    .line 1408
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v4, 0x3ef

    invoke-virtual {v3, v4}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto/16 :goto_0

    .line 1411
    .end local v0           #isPin:Ljava/lang/String;
    .end local v1           #msg:Ljava/lang/String;
    .end local v2           #res:Lcom/kt/olleh/inapp/net/ResCheckPin;
    :cond_b
    const-string v3, "SetPin"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, p2

    .line 1412
    check-cast v2, Lcom/kt/olleh/inapp/net/ResSetPin;

    .line 1414
    .local v2, res:Lcom/kt/olleh/inapp/net/ResSetPin;
    const-string v3, "Y"

    invoke-virtual {v2}, Lcom/kt/olleh/inapp/net/ResSetPin;->getmPin_set_ret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1415
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v4, "\ud578\ub4dc\ud3f0 \ubcf4\uc548\ubc88\ud638 \uc124\uc815 \uc644\ub8cc"

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Title:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Purchase;->access$17(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1416
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v4, "\ud578\ub4dc\ud3f0 \ubcf4\uc548\ubc88\ud638 \uc124\uc815\uc774 \uc644\ub8cc\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Purchase;->access$6(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1417
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z
    invoke-static {v3, v6}, Lcom/kt/olleh/inapp/Purchase;->access$13(Lcom/kt/olleh/inapp/Purchase;Z)V

    .line 1418
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v3, v7}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto/16 :goto_0

    .line 1420
    :cond_c
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v4, "\ud578\ub4dc\ud3f0 \ubcf4\uc548\ubc88\ud638 \uc124\uc815 \uc2e4\ud328"

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Title:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Purchase;->access$17(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1421
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iget-object v4, v2, Lcom/kt/olleh/inapp/net/ResSetPin;->mReason:Ljava/lang/String;

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Purchase;->access$6(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1422
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z
    invoke-static {v3, v5}, Lcom/kt/olleh/inapp/Purchase;->access$13(Lcom/kt/olleh/inapp/Purchase;Z)V

    .line 1423
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v3, v7}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto/16 :goto_0
.end method

.method public OnResultFileURL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "code"
    .parameter "url"

    .prologue
    .line 1471
    return-void
.end method

.method public OnResultOLDAPI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "message"

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$18(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$18(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultOLDAPI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    :cond_0
    return-void
.end method

.method public OnResultPurchase(Ljava/lang/String;)V
    .locals 0
    .parameter "tr_id"

    .prologue
    .line 1323
    return-void
.end method
