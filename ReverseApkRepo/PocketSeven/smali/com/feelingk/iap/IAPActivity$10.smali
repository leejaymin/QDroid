.class Lcom/feelingk/iap/IAPActivity$10;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/IAPActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/IAPActivity;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoPurchaseInfoClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "formName"
    .parameter "message"

    .prologue
    .line 1089
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V
    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$14(Lcom/feelingk/iap/IAPActivity;)V

    .line 1090
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$28(Lcom/feelingk/iap/IAPActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x464

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1091
    .local v0, msgUI:Landroid/os/Message;
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$28(Lcom/feelingk/iap/IAPActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1092
    return-void
.end method

.method public onEnterTstore()V
    .locals 9

    .prologue
    .line 1259
    const/4 v2, 0x0

    .line 1261
    .local v2, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    check-cast v0, [B

    .line 1263
    .local v0, data:[B
    :try_start_0
    iget-object v6, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v7, "com.skt.skaf.A000Z00040"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/feelingk/iap/IAPActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 1264
    .local v4, other:Landroid/content/Context;
    const-string v6, "lockInfo.txt"

    invoke-virtual {v4, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 1266
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 1267
    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 1268
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1279
    .end local v4           #other:Landroid/content/Context;
    :goto_0
    if-eqz v0, :cond_1

    .line 1280
    const-string v5, "SETTING_VIEW"

    .line 1281
    .local v5, strMsg:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1282
    .local v3, intent:Landroid/content/Intent;
    const/high16 v6, 0x2000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1283
    const-string v6, "com.skt.skaf.A000Z00040"

    const-string v7, "com.skt.skaf.A000Z00040.A000Z00040"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1284
    const-string v6, "COLLAB_ACTION"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1285
    const-string v6, "com.skt.skaf.COL.URI"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1286
    const-string v6, "com.skt.skaf.COL.REQUESTER"

    const-string v7, "A000Z00040"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1287
    iget-object v6, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v6, v3}, Lcom/feelingk/iap/IAPActivity;->startActivity(Landroid/content/Intent;)V

    .line 1297
    .end local v5           #strMsg:Ljava/lang/String;
    :goto_1
    return-void

    .line 1269
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v4       #other:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 1270
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1273
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #other:Landroid/content/Context;
    :catch_1
    move-exception v1

    .line 1274
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1275
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v1

    .line 1276
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1292
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1293
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "com.skt.skaf.A000Z00040"

    const-string v7, "com.skt.skaf.A000Z00040.A000Z00040"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1294
    iget-object v6, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v6, v3}, Lcom/feelingk/iap/IAPActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onPurchaseAutoButtonClick()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x67

    const/4 v10, 0x3

    .line 1099
    invoke-static {v12}, Lcom/feelingk/iap/IAPLib;->setLimitExcess(Z)V

    .line 1101
    const/4 v2, 0x0

    .line 1103
    .local v2, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    check-cast v0, [B

    .line 1105
    .local v0, data:[B
    :try_start_0
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v8, "com.skt.skaf.A000Z00040"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Lcom/feelingk/iap/IAPActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 1106
    .local v5, other:Landroid/content/Context;
    const-string v7, "lockInfo.txt"

    invoke-virtual {v5, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 1108
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v7

    new-array v0, v7, [B

    .line 1109
    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 1110
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1120
    .end local v5           #other:Landroid/content/Context;
    :goto_0
    if-eqz v0, :cond_a

    array-length v7, v0

    const/16 v8, 0xe

    if-ne v7, v8, :cond_a

    .line 1121
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 1124
    .local v6, value:Ljava/lang/String;
    const/16 v7, 0xc

    invoke-virtual {v6, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/feelingk/iap/IAPActivity;->access$31(Ljava/lang/String;)V

    .line 1128
    :try_start_2
    invoke-static {}, Lcom/feelingk/iap/IAPActivity;->access$32()Ljava/lang/String;

    move-result-object v7

    const-string v8, "5w5943jeheiqtytyieo1wo3i"

    invoke-static {v7, v8}, Lcom/feelingk/iap/IAPActivity;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/feelingk/iap/IAPActivity;->access$33(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1134
    :goto_1
    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1136
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-boolean v7, v7, Lcom/feelingk/iap/IAPActivity;->pwdAuthFlag:Z

    if-nez v7, :cond_3

    .line 1137
    const-string v7, "IAPActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\ube44\ubc00\ubc88\ud638 \uc778\uc99d \ub2e4\uc774\uc5bc\ub85c\uadf8 \ub744\uc6b0\uae30 \uc9c4\uc785, pwdAuthFlag: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-boolean v9, v9, Lcom/feelingk/iap/IAPActivity;->pwdAuthFlag:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    invoke-static {}, Lcom/feelingk/iap/IAPActivity;->access$29()I

    move-result v7

    if-ne v7, v10, :cond_1

    .line 1140
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V
    invoke-static {v7}, Lcom/feelingk/iap/IAPActivity;->access$14(Lcom/feelingk/iap/IAPActivity;)V

    .line 1141
    const/16 v7, 0x64

    invoke-static {v7}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1143
    :cond_1
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-class v8, Lcom/feelingk/iap/PwdActivity;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1144
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "pwd"

    invoke-static {}, Lcom/feelingk/iap/IAPActivity;->access$34()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1145
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    const v8, 0xd7115

    invoke-virtual {v7, v3, v8}, Lcom/feelingk/iap/IAPActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1243
    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #value:Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 1111
    .restart local v5       #other:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 1112
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1115
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #other:Landroid/content/Context;
    :catch_1
    move-exception v1

    .line 1116
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1117
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v1

    .line 1118
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1129
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v6       #value:Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 1130
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1149
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v4, 0x0

    .line 1151
    .local v4, lguPlusFlag:Z
    invoke-static {}, Lcom/feelingk/iap/IAPActivity;->access$29()I

    move-result v7

    if-ne v7, v10, :cond_4

    .line 1152
    const/4 v4, 0x1

    .line 1155
    :cond_4
    if-eqz v4, :cond_5

    .line 1156
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V
    invoke-static {v7}, Lcom/feelingk/iap/IAPActivity;->access$14(Lcom/feelingk/iap/IAPActivity;)V

    .line 1157
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v7}, Lcom/feelingk/iap/IAPActivity;->showLguSMSAuthDlg()V

    goto :goto_2

    .line 1160
    :cond_5
    invoke-static {v11}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1161
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity$10;->onPurchaseButtonClick()V

    goto :goto_2

    .line 1173
    .end local v4           #lguPlusFlag:Z
    :cond_6
    const-string v7, "IAPActivity"

    const-string v8, "\uc0f5\ud074 \ube44\ubc00\ubc88\ud638 \ubbf8\uc124\uc815"

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    const/4 v4, 0x0

    .line 1177
    .restart local v4       #lguPlusFlag:Z
    invoke-static {}, Lcom/feelingk/iap/IAPActivity;->access$29()I

    move-result v7

    if-ne v7, v10, :cond_7

    .line 1178
    const/4 v4, 0x1

    .line 1181
    :cond_7
    if-eqz v4, :cond_8

    .line 1182
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V
    invoke-static {v7}, Lcom/feelingk/iap/IAPActivity;->access$14(Lcom/feelingk/iap/IAPActivity;)V

    .line 1183
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v7}, Lcom/feelingk/iap/IAPActivity;->showLguSMSAuthDlg()V

    goto :goto_2

    .line 1188
    :cond_8
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v7}, Lcom/feelingk/iap/IAPActivity;->isExistOTPLog()Z

    move-result v7

    if-nez v7, :cond_9

    .line 1190
    const-string v7, "IAPActivity"

    const-string v8, "OTP \uc778\uc99d \ud30c\uc77c \ubbf8\uc874\uc7ac"

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->showPopOtpDlg()V
    invoke-static {v7}, Lcom/feelingk/iap/IAPActivity;->access$35(Lcom/feelingk/iap/IAPActivity;)V

    goto :goto_2

    .line 1195
    :cond_9
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v7}, Lcom/feelingk/iap/IAPActivity;->isExistOTPLog()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1196
    const-string v7, "IAPActivity"

    const-string v8, "OTP \uc778\uc99d \ud30c\uc77c \uc874\uc7ac"

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    invoke-static {v11}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1198
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity$10;->onPurchaseButtonClick()V

    goto :goto_2

    .line 1205
    .end local v4           #lguPlusFlag:Z
    .end local v6           #value:Ljava/lang/String;
    :cond_a
    const-string v7, "IAPActivity"

    const-string v8, "data is null && \uc0f5\ud074 \uc7a0\uae08\ud30c\uc77c \ubbf8\uc874\uc7ac"

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const/4 v4, 0x0

    .line 1213
    .restart local v4       #lguPlusFlag:Z
    invoke-static {}, Lcom/feelingk/iap/IAPActivity;->access$29()I

    move-result v7

    if-ne v7, v10, :cond_b

    .line 1214
    const/4 v4, 0x1

    .line 1217
    :cond_b
    if-eqz v4, :cond_c

    .line 1218
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V
    invoke-static {v7}, Lcom/feelingk/iap/IAPActivity;->access$14(Lcom/feelingk/iap/IAPActivity;)V

    .line 1219
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v7}, Lcom/feelingk/iap/IAPActivity;->showLguSMSAuthDlg()V

    goto/16 :goto_2

    .line 1225
    :cond_c
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v7}, Lcom/feelingk/iap/IAPActivity;->isExistOTPLog()Z

    move-result v7

    if-nez v7, :cond_d

    .line 1229
    const-string v7, "IAPActivity"

    const-string v8, "OTP \uc778\uc99d \ud30c\uc77c \ubbf8\uc874\uc7ac"

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->showPopOtpDlg()V
    invoke-static {v7}, Lcom/feelingk/iap/IAPActivity;->access$35(Lcom/feelingk/iap/IAPActivity;)V

    goto/16 :goto_2

    .line 1233
    :cond_d
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v7}, Lcom/feelingk/iap/IAPActivity;->isExistOTPLog()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1234
    const-string v7, "IAPActivity"

    const-string v8, "OTP \uc778\uc99d \ud30c\uc77c \uc874\uc7ac"

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    invoke-static {v11}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1236
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity$10;->onPurchaseButtonClick()V

    goto/16 :goto_2
.end method

.method public onPurchaseAutoCancelButtonClick(Ljava/lang/String;)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 1247
    const-string v0, "error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v1, 0x67

    const-string v2, "\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uc548\ub0b4\uc5d0 \ub300\ud574\n\ub3d9\uc758 \ud574 \uc8fc\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4."

    #calls: Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/IAPActivity;->access$17(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    .line 1250
    :cond_0
    return-void
.end method

.method public onPurchaseButtonClick()V
    .locals 9

    .prologue
    const/16 v8, 0x44c

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1063
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$28(Lcom/feelingk/iap/IAPActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1064
    .local v2, msgUI:Landroid/os/Message;
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$28(Lcom/feelingk/iap/IAPActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1066
    invoke-static {}, Lcom/feelingk/iap/IAPActivity;->access$29()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 1068
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getNetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1069
    .local v0, hnd:Landroid/os/Handler;
    const/4 v1, 0x0

    .line 1070
    .local v1, msgNET:Landroid/os/Message;
    const-string v3, "IAPActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "# Purchase SK!!  mUseTCash ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mUseTCash:Z
    invoke-static {v7}, Lcom/feelingk/iap/IAPActivity;->access$30(Lcom/feelingk/iap/IAPActivity;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / BPProtocol = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;
    invoke-static {v7}, Lcom/feelingk/iap/IAPActivity;->access$27(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mUseTCash:Z
    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$30(Lcom/feelingk/iap/IAPActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    iget-object v6, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;
    invoke-static {v6}, Lcom/feelingk/iap/IAPActivity;->access$27(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    invoke-virtual {v0, v8, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1072
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1085
    :goto_2
    return-void

    :cond_0
    move v3, v5

    .line 1071
    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    .line 1076
    .end local v0           #hnd:Landroid/os/Handler;
    .end local v1           #msgNET:Landroid/os/Message;
    :cond_2
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getNetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1081
    .restart local v0       #hnd:Landroid/os/Handler;
    const-string v3, "IAPActivity"

    const-string v4, "# Purchase KT_LG!!  "

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    const/16 v3, 0x44d

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1083
    .restart local v1       #msgNET:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2
.end method

.method public onPurchaseCancelButtonClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1044
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getNetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1045
    .local v0, hnd:Landroid/os/Handler;
    const/16 v3, 0x44e

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1046
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1048
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V
    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$14(Lcom/feelingk/iap/IAPActivity;)V

    .line 1050
    const/16 v3, 0x64

    invoke-static {v3}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1051
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    #setter for: Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;
    invoke-static {v4, v5}, Lcom/feelingk/iap/IAPActivity;->access$19(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    #setter for: Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;
    invoke-static {v3, v5}, Lcom/feelingk/iap/IAPActivity;->access$20(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    .line 1052
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    #setter for: Lcom/feelingk/iap/IAPActivity;->mUseTCash:Z
    invoke-static {v3, v6}, Lcom/feelingk/iap/IAPActivity;->access$21(Lcom/feelingk/iap/IAPActivity;Z)V

    .line 1054
    invoke-static {v6}, Lcom/feelingk/iap/IAPLib;->setLimitExcess(Z)V

    .line 1057
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;
    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$7(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/IAPLibSetting;

    move-result-object v3

    iget-object v2, v3, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 1058
    .local v2, onAppCallbackFn:Lcom/feelingk/iap/IAPLib$OnClientListener;
    invoke-interface {v2}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onDlgPurchaseCancel()V

    .line 1059
    return-void
.end method

.method public onTstoreLockError(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v1, 0x64

    #calls: Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/feelingk/iap/IAPActivity;->access$17(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    .line 1255
    return-void
.end method

.method public onUseTCashCheckChanged(Z)V
    .locals 3
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x0

    .line 1023
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    #setter for: Lcom/feelingk/iap/IAPActivity;->mUseTCash:Z
    invoke-static {v0, p1}, Lcom/feelingk/iap/IAPActivity;->access$21(Lcom/feelingk/iap/IAPActivity;Z)V

    .line 1026
    if-eqz p1, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$20(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    .line 1038
    :goto_0
    const-string v0, "IAPActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PopupCheck!!  UseTCash ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / BPProtocol = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/feelingk/iap/IAPActivity;->access$27(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    return-void

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$26(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1033
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$20(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1035
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$20(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    goto :goto_0
.end method
