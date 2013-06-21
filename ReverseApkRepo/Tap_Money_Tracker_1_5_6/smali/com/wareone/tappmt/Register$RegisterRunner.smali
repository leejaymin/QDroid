.class Lcom/wareone/tappmt/Register$RegisterRunner;
.super Ljava/lang/Object;
.source "Register.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/Register;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Register;


# direct methods
.method private constructor <init>(Lcom/wareone/tappmt/Register;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/wareone/tappmt/Register$RegisterRunner;->this$0:Lcom/wareone/tappmt/Register;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wareone/tappmt/Register;Lcom/wareone/tappmt/Register$RegisterRunner;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/wareone/tappmt/Register$RegisterRunner;-><init>(Lcom/wareone/tappmt/Register;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 186
    invoke-static {}, Lcom/wareone/tappmt/Register;->access$0()Ljava/lang/String;

    move-result-object v19

    const-string v20, "doRegister on new thread"

    invoke-static/range {v19 .. v20}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Register$RegisterRunner;->this$0:Lcom/wareone/tappmt/Register;

    move-object/from16 v19, v0

    const v20, 0x7f0c008c

    invoke-virtual/range {v19 .. v20}, Lcom/wareone/tappmt/Register;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 189
    .local v18, tv_device:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Register$RegisterRunner;->this$0:Lcom/wareone/tappmt/Register;

    move-object/from16 v19, v0

    const v20, 0x7f0c008d

    invoke-virtual/range {v19 .. v20}, Lcom/wareone/tappmt/Register;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 190
    .local v9, edt_name:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Register$RegisterRunner;->this$0:Lcom/wareone/tappmt/Register;

    move-object/from16 v19, v0

    const v20, 0x7f0c008e

    invoke-virtual/range {v19 .. v20}, Lcom/wareone/tappmt/Register;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 192
    .local v8, edt_code:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Register$RegisterRunner;->this$0:Lcom/wareone/tappmt/Register;

    move-object/from16 v19, v0

    const-string v20, "TapPMTPrefs"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/wareone/tappmt/Register;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 193
    .local v16, settings:Landroid/content/SharedPreferences;
    const-string v19, "google_account"

    const-string v20, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, account:Ljava/lang/String;
    invoke-static {}, Lcom/wareone/tappmt/Register;->access$0()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Create a new HttpClient and Post Header"

    invoke-static/range {v19 .. v20}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 198
    .local v10, httpclient:Lorg/apache/http/client/HttpClient;
    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    const-string v19, "http://android.wareone.com/register.php"

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 205
    .local v11, httppost:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    const/16 v19, 0x2

    move-object v0, v14

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    .local v14, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v19, Lorg/apache/http/message/BasicNameValuePair;

    const-string v20, "model"

    sget-object v21, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct/range {v19 .. v21}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v19, Lorg/apache/http/message/BasicNameValuePair;

    const-string v20, "software"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Register$RegisterRunner;->this$0:Lcom/wareone/tappmt/Register;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/wareone/tappmt/Register;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v19, Lorg/apache/http/message/BasicNameValuePair;

    const-string v20, "device"

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v19, Lorg/apache/http/message/BasicNameValuePair;

    const-string v20, "name"

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v19, Lorg/apache/http/message/BasicNameValuePair;

    const-string v20, "account"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v19, Lorg/apache/http/message/BasicNameValuePair;

    const-string v20, "code"

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v19, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v20, "UTF-8"

    move-object/from16 v0, v19

    move-object v1, v14

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 215
    invoke-static {}, Lcom/wareone/tappmt/Register;->access$0()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Execute HTTP Post Request"

    invoke-static/range {v19 .. v20}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-interface {v10, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 217
    .local v15, response:Lorg/apache/http/HttpResponse;
    invoke-static {}, Lcom/wareone/tappmt/Register;->access$0()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Response Code --> "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 219
    invoke-static {}, Lcom/wareone/tappmt/Register;->access$0()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Read response text"

    invoke-static/range {v19 .. v20}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    .line 222
    .local v12, is:Ljava/io/InputStream;
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object v6, v0

    .line 224
    .local v6, data:[B
    new-instance v5, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v19, 0x400

    move-object v0, v5

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 225
    .local v5, buf:Lorg/apache/http/util/ByteArrayBuffer;
    :goto_0
    invoke-virtual {v12, v6}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .local v13, n:I
    const/16 v19, -0x1

    move v0, v13

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 228
    new-instance v17, Ljava/lang/String;

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v19

    const-string v20, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 229
    .local v17, str:Ljava/lang/String;
    const/16 v19, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 230
    invoke-static {}, Lcom/wareone/tappmt/Register;->access$0()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "response code ---> "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v19, "10000"

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_2

    .line 233
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 234
    .local v7, editor:Landroid/content/SharedPreferences$Editor;
    const-string v19, "authorized"

    const/16 v20, 0x1

    move-object v0, v7

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 235
    const-string v19, "auth_name"

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    const-string v19, "auth_code"

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 237
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Register$RegisterRunner;->this$0:Lcom/wareone/tappmt/Register;

    move-object/from16 v19, v0

    #getter for: Lcom/wareone/tappmt/Register;->m_dlg:Landroid/app/ProgressDialog;
    invoke-static/range {v19 .. v19}, Lcom/wareone/tappmt/Register;->access$1(Lcom/wareone/tappmt/Register;)Landroid/app/ProgressDialog;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->dismiss()V

    .line 259
    .end local v5           #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v6           #data:[B
    .end local v7           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v12           #is:Ljava/io/InputStream;
    .end local v13           #n:I
    .end local v14           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v17           #str:Ljava/lang/String;
    :goto_1
    return-void

    .line 226
    .restart local v5       #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v6       #data:[B
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v13       #n:I
    .restart local v14       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    :cond_0
    const/16 v19, 0x0

    move-object v0, v5

    move-object v1, v6

    move/from16 v2, v19

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 251
    .end local v5           #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v6           #data:[B
    .end local v12           #is:Ljava/io/InputStream;
    .end local v13           #n:I
    .end local v14           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v19

    .line 257
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Register$RegisterRunner;->this$0:Lcom/wareone/tappmt/Register;

    move-object/from16 v19, v0

    #getter for: Lcom/wareone/tappmt/Register;->m_dlg:Landroid/app/ProgressDialog;
    invoke-static/range {v19 .. v19}, Lcom/wareone/tappmt/Register;->access$1(Lcom/wareone/tappmt/Register;)Landroid/app/ProgressDialog;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_1

    .line 243
    .restart local v5       #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v6       #data:[B
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v13       #n:I
    .restart local v14       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #str:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v19, "40001"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_1

    .line 244
    const-string v19, "40002"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_1

    .line 245
    const-string v19, "40003"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 253
    .end local v5           #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v6           #data:[B
    .end local v12           #is:Ljava/io/InputStream;
    .end local v13           #n:I
    .end local v14           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v17           #str:Ljava/lang/String;
    :catch_1
    move-exception v19

    goto :goto_2
.end method
