.class public Lkr/co/medinbiz/helper/XmlParserHelper;
.super Ljava/lang/Object;
.source "XmlParserHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private parser:Lorg/xmlpull/v1/XmlPullParser;

.field private parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->mContext:Landroid/content/Context;

    .line 32
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 33
    iget-object v1, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getContactList(Ljava/io/InputStream;)Lkr/co/medinbiz/dto/ContactList;
    .locals 11
    .parameter "in"

    .prologue
    const/4 v10, 0x4

    .line 407
    new-instance v1, Lkr/co/medinbiz/dto/ContactList;

    invoke-direct {v1}, Lkr/co/medinbiz/dto/ContactList;-><init>()V

    .line 410
    .local v1, contactList:Lkr/co/medinbiz/dto/ContactList;
    :try_start_0
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 412
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 413
    .local v5, eventType:I
    const/4 v3, 0x0

    .line 414
    .local v3, done:Z
    const/4 v2, 0x0

    .line 415
    .local v2, contacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Contact;>;"
    const/4 v0, 0x0

    .line 416
    .local v0, contact:Lkr/co/medinbiz/dto/Contact;
    const/4 v6, 0x0

    .line 417
    .local v6, tagName:Ljava/lang/String;
    :goto_0
    const/4 v7, 0x1

    if-eq v5, v7, :cond_0

    if-eqz v3, :cond_1

    .line 482
    .end local v0           #contact:Lkr/co/medinbiz/dto/Contact;
    .end local v2           #contacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Contact;>;"
    .end local v3           #done:Z
    .end local v5           #eventType:I
    .end local v6           #tagName:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v1

    .line 419
    .restart local v0       #contact:Lkr/co/medinbiz/dto/Contact;
    .restart local v2       #contacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Contact;>;"
    .restart local v3       #done:Z
    .restart local v5       #eventType:I
    .restart local v6       #tagName:Ljava/lang/String;
    :cond_1
    packed-switch v5, :pswitch_data_0

    .line 477
    :cond_2
    :goto_2
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_0

    .line 422
    :pswitch_0
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 423
    const-string v7, "contactList"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 425
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    .line 426
    const-string v9, "result"

    .line 425
    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lkr/co/medinbiz/dto/ContactList;->setResult(Ljava/lang/String;)V

    .line 439
    :cond_3
    :goto_3
    const-string v7, "hp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 441
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 442
    if-ne v5, v10, :cond_4

    .line 444
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lkr/co/medinbiz/dto/Contact;->setHp(Ljava/lang/String;)V

    .line 447
    :cond_4
    const-string v7, "status"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 448
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 449
    if-ne v5, v10, :cond_5

    .line 451
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lkr/co/medinbiz/dto/Contact;->setStatus(Ljava/lang/String;)V

    .line 455
    :cond_5
    const-string v7, "name"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 456
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 457
    if-ne v5, v10, :cond_2

    .line 459
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lkr/co/medinbiz/dto/Contact;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 479
    .end local v0           #contact:Lkr/co/medinbiz/dto/Contact;
    .end local v2           #contacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Contact;>;"
    .end local v3           #done:Z
    .end local v5           #eventType:I
    .end local v6           #tagName:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 480
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 431
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v0       #contact:Lkr/co/medinbiz/dto/Contact;
    .restart local v2       #contacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Contact;>;"
    .restart local v3       #done:Z
    .restart local v5       #eventType:I
    .restart local v6       #tagName:Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string v7, "contact"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 433
    if-nez v2, :cond_7

    .line 434
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #contacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Contact;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .restart local v2       #contacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Contact;>;"
    :cond_7
    new-instance v0, Lkr/co/medinbiz/dto/Contact;

    .end local v0           #contact:Lkr/co/medinbiz/dto/Contact;
    invoke-direct {v0}, Lkr/co/medinbiz/dto/Contact;-><init>()V

    .restart local v0       #contact:Lkr/co/medinbiz/dto/Contact;
    goto :goto_3

    .line 465
    :pswitch_1
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 466
    const-string v7, "contactList"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 467
    invoke-virtual {v1, v2}, Lkr/co/medinbiz/dto/ContactList;->setContacts(Ljava/util/ArrayList;)V

    .line 468
    const/4 v3, 0x1

    .line 469
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 470
    :cond_8
    const-string v7, "contact"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 471
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 472
    const/4 v0, 0x0

    .line 473
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 419
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMemberList(Ljava/io/InputStream;)Lkr/co/medinbiz/dto/MemberList;
    .locals 11
    .parameter "in"

    .prologue
    const/4 v10, 0x4

    .line 143
    new-instance v5, Lkr/co/medinbiz/dto/MemberList;

    invoke-direct {v5}, Lkr/co/medinbiz/dto/MemberList;-><init>()V

    .line 145
    .local v5, memberList:Lkr/co/medinbiz/dto/MemberList;
    :try_start_0
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 147
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 148
    .local v2, eventType:I
    const/4 v0, 0x0

    .line 149
    .local v0, done:Z
    const/4 v3, 0x0

    .line 150
    .local v3, invite:Lkr/co/medinbiz/dto/Invite;
    const/4 v4, 0x0

    .line 151
    .local v4, inviteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Invite;>;"
    const/4 v6, 0x0

    .line 152
    .local v6, tagName:Ljava/lang/String;
    :goto_0
    const/4 v7, 0x1

    if-eq v2, v7, :cond_0

    if-eqz v0, :cond_1

    .line 215
    .end local v0           #done:Z
    .end local v2           #eventType:I
    .end local v3           #invite:Lkr/co/medinbiz/dto/Invite;
    .end local v4           #inviteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Invite;>;"
    .end local v6           #tagName:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v5

    .line 154
    .restart local v0       #done:Z
    .restart local v2       #eventType:I
    .restart local v3       #invite:Lkr/co/medinbiz/dto/Invite;
    .restart local v4       #inviteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Invite;>;"
    .restart local v6       #tagName:Ljava/lang/String;
    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 209
    :cond_2
    :goto_2
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 157
    :pswitch_0
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 158
    const-string v7, "UserList"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 160
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    .line 161
    const-string v9, "result"

    .line 160
    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lkr/co/medinbiz/dto/MemberList;->setResult(Ljava/lang/String;)V

    .line 162
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    .line 163
    const-string v9, "type"

    .line 162
    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lkr/co/medinbiz/dto/MemberList;->setType(Ljava/lang/String;)V

    .line 170
    :cond_3
    const-string v7, "invite"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 172
    if-nez v4, :cond_4

    .line 173
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #inviteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Invite;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .restart local v4       #inviteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Invite;>;"
    :cond_4
    new-instance v3, Lkr/co/medinbiz/dto/Invite;

    .end local v3           #invite:Lkr/co/medinbiz/dto/Invite;
    invoke-direct {v3}, Lkr/co/medinbiz/dto/Invite;-><init>()V

    .line 179
    .restart local v3       #invite:Lkr/co/medinbiz/dto/Invite;
    :cond_5
    const-string v7, "mnum"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 181
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 182
    if-ne v2, v10, :cond_6

    .line 184
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lkr/co/medinbiz/dto/Invite;->setMnum(Ljava/lang/String;)V

    .line 187
    :cond_6
    const-string v7, "name"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 188
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 189
    if-ne v2, v10, :cond_2

    .line 191
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lkr/co/medinbiz/dto/Invite;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 212
    .end local v0           #done:Z
    .end local v2           #eventType:I
    .end local v3           #invite:Lkr/co/medinbiz/dto/Invite;
    .end local v4           #inviteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Invite;>;"
    .end local v6           #tagName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 213
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 197
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #done:Z
    .restart local v2       #eventType:I
    .restart local v3       #invite:Lkr/co/medinbiz/dto/Invite;
    .restart local v4       #inviteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Invite;>;"
    .restart local v6       #tagName:Ljava/lang/String;
    :pswitch_1
    :try_start_1
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 198
    const-string v7, "UserList"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 199
    invoke-virtual {v5, v4}, Lkr/co/medinbiz/dto/MemberList;->setInvites(Ljava/util/ArrayList;)V

    .line 200
    const/4 v0, 0x1

    .line 201
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 202
    :cond_7
    const-string v7, "invite"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 203
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 204
    const/4 v3, 0x0

    .line 205
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 154
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPhotoList(Ljava/io/InputStream;)Lkr/co/medinbiz/dto/PhotoList;
    .locals 11
    .parameter "in"

    .prologue
    const/4 v10, 0x4

    .line 220
    new-instance v3, Lkr/co/medinbiz/dto/PhotoList;

    invoke-direct {v3}, Lkr/co/medinbiz/dto/PhotoList;-><init>()V

    .line 223
    .local v3, photoList:Lkr/co/medinbiz/dto/PhotoList;
    :try_start_0
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 225
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 226
    .local v2, eventType:I
    const/4 v0, 0x0

    .line 227
    .local v0, done:Z
    const/4 v5, 0x0

    .line 228
    .local v5, ultra:Lkr/co/medinbiz/dto/Ultra;
    const/4 v6, 0x0

    .line 229
    .local v6, ultraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Ultra;>;"
    const/4 v4, 0x0

    .line 230
    .local v4, tagName:Ljava/lang/String;
    :goto_0
    const/4 v7, 0x1

    if-eq v2, v7, :cond_0

    if-eqz v0, :cond_1

    .line 299
    .end local v0           #done:Z
    .end local v2           #eventType:I
    .end local v4           #tagName:Ljava/lang/String;
    .end local v5           #ultra:Lkr/co/medinbiz/dto/Ultra;
    .end local v6           #ultraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Ultra;>;"
    :cond_0
    :goto_1
    return-object v3

    .line 232
    .restart local v0       #done:Z
    .restart local v2       #eventType:I
    .restart local v4       #tagName:Ljava/lang/String;
    .restart local v5       #ultra:Lkr/co/medinbiz/dto/Ultra;
    .restart local v6       #ultraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Ultra;>;"
    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 294
    :cond_2
    :goto_2
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 235
    :pswitch_0
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 236
    const-string v7, "photoList"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 238
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    .line 239
    const-string v9, "result"

    .line 238
    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lkr/co/medinbiz/dto/PhotoList;->setResult(Ljava/lang/String;)V

    .line 240
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    .line 241
    const-string v9, "totalpage"

    .line 240
    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lkr/co/medinbiz/dto/PhotoList;->setTotalpage(Ljava/lang/String;)V

    .line 242
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    .line 243
    const-string v9, "totalphoto"

    .line 242
    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lkr/co/medinbiz/dto/PhotoList;->setTotalphoto(Ljava/lang/String;)V

    .line 256
    :cond_3
    :goto_3
    const-string v7, "date"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 258
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 259
    if-ne v2, v10, :cond_4

    .line 261
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lkr/co/medinbiz/dto/Ultra;->setDate(Ljava/lang/String;)V

    .line 264
    :cond_4
    const-string v7, "place"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 265
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 266
    if-ne v2, v10, :cond_5

    .line 268
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lkr/co/medinbiz/dto/Ultra;->setPlace(Ljava/lang/String;)V

    .line 272
    :cond_5
    const-string v7, "ThumbnailUrl"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 273
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 274
    if-ne v2, v10, :cond_2

    .line 276
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lkr/co/medinbiz/dto/Ultra;->setThumbnailUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 296
    .end local v0           #done:Z
    .end local v2           #eventType:I
    .end local v4           #tagName:Ljava/lang/String;
    .end local v5           #ultra:Lkr/co/medinbiz/dto/Ultra;
    .end local v6           #ultraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Ultra;>;"
    :catch_0
    move-exception v1

    .line 297
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 248
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #done:Z
    .restart local v2       #eventType:I
    .restart local v4       #tagName:Ljava/lang/String;
    .restart local v5       #ultra:Lkr/co/medinbiz/dto/Ultra;
    .restart local v6       #ultraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Ultra;>;"
    :cond_6
    :try_start_1
    const-string v7, "photo"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 250
    if-nez v6, :cond_7

    .line 251
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #ultraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Ultra;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .restart local v6       #ultraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Ultra;>;"
    :cond_7
    new-instance v5, Lkr/co/medinbiz/dto/Ultra;

    .end local v5           #ultra:Lkr/co/medinbiz/dto/Ultra;
    invoke-direct {v5}, Lkr/co/medinbiz/dto/Ultra;-><init>()V

    .restart local v5       #ultra:Lkr/co/medinbiz/dto/Ultra;
    goto :goto_3

    .line 282
    :pswitch_1
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 283
    const-string v7, "photoList"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 284
    invoke-virtual {v3, v6}, Lkr/co/medinbiz/dto/PhotoList;->setUltras(Ljava/util/ArrayList;)V

    .line 285
    const/4 v0, 0x1

    .line 286
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 287
    :cond_8
    const-string v7, "photo"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 288
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 289
    const/4 v5, 0x0

    .line 290
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 232
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRoots(Ljava/io/InputStream;)Lkr/co/medinbiz/dto/Roots;
    .locals 11
    .parameter "in"

    .prologue
    const/4 v10, 0x4

    .line 41
    new-instance v5, Lkr/co/medinbiz/dto/Roots;

    invoke-direct {v5}, Lkr/co/medinbiz/dto/Roots;-><init>()V

    .line 43
    .local v5, roots:Lkr/co/medinbiz/dto/Roots;
    :try_start_0
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 45
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 46
    .local v2, eventType:I
    const/4 v0, 0x0

    .line 47
    .local v0, done:Z
    const/4 v6, 0x0

    .line 48
    .local v6, tagName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 49
    .local v3, member:Lkr/co/medinbiz/dto/Member;
    const/4 v4, 0x0

    .line 50
    .local v4, notice:Lkr/co/medinbiz/dto/Notice;
    :goto_0
    const/4 v7, 0x1

    if-eq v2, v7, :cond_0

    if-eqz v0, :cond_1

    .line 138
    .end local v0           #done:Z
    .end local v2           #eventType:I
    .end local v3           #member:Lkr/co/medinbiz/dto/Member;
    .end local v4           #notice:Lkr/co/medinbiz/dto/Notice;
    .end local v6           #tagName:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v5

    .line 51
    .restart local v0       #done:Z
    .restart local v2       #eventType:I
    .restart local v3       #member:Lkr/co/medinbiz/dto/Member;
    .restart local v4       #notice:Lkr/co/medinbiz/dto/Notice;
    .restart local v6       #tagName:Ljava/lang/String;
    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 131
    :cond_2
    :goto_2
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 54
    :pswitch_0
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 55
    const-string v7, "root"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 57
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 58
    const/4 v8, 0x0

    const-string v9, "result"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 57
    invoke-virtual {v5, v7}, Lkr/co/medinbiz/dto/Roots;->setResult(Ljava/lang/String;)V

    .line 59
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    .line 60
    const-string v9, "saybebe"

    .line 59
    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lkr/co/medinbiz/dto/Roots;->setSaybebe(Ljava/lang/String;)V

    .line 61
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    .line 62
    const-string v9, "version"

    .line 61
    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lkr/co/medinbiz/dto/Roots;->setVersion(Ljava/lang/String;)V

    .line 63
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 64
    const/4 v8, 0x0

    const-string v9, "cdtype"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 63
    invoke-virtual {v5, v7}, Lkr/co/medinbiz/dto/Roots;->setCdtype(Ljava/lang/String;)V

    .line 65
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    .line 66
    const-string v9, "barcode_reg"

    .line 65
    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lkr/co/medinbiz/dto/Roots;->setBarcode_reg(Ljava/lang/String;)V

    .line 82
    :cond_3
    :goto_3
    const-string v7, "name"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 83
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 84
    if-ne v2, v10, :cond_4

    .line 85
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lkr/co/medinbiz/dto/Member;->setName(Ljava/lang/String;)V

    .line 89
    :cond_4
    const-string v7, "babydue"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 90
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 91
    if-ne v2, v10, :cond_5

    .line 92
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lkr/co/medinbiz/dto/Member;->setBabydue(Ljava/lang/String;)V

    .line 97
    :cond_5
    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 98
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 99
    if-ne v2, v10, :cond_6

    .line 100
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lkr/co/medinbiz/dto/Notice;->setId(Ljava/lang/String;)V

    .line 105
    :cond_6
    const-string v7, "text"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 106
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 107
    if-ne v2, v10, :cond_2

    .line 108
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lkr/co/medinbiz/dto/Notice;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 134
    .end local v0           #done:Z
    .end local v2           #eventType:I
    .end local v3           #member:Lkr/co/medinbiz/dto/Member;
    .end local v4           #notice:Lkr/co/medinbiz/dto/Notice;
    .end local v6           #tagName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 136
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 72
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #done:Z
    .restart local v2       #eventType:I
    .restart local v3       #member:Lkr/co/medinbiz/dto/Member;
    .restart local v4       #notice:Lkr/co/medinbiz/dto/Notice;
    .restart local v6       #tagName:Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string v7, "member"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 73
    new-instance v3, Lkr/co/medinbiz/dto/Member;

    .end local v3           #member:Lkr/co/medinbiz/dto/Member;
    invoke-direct {v3}, Lkr/co/medinbiz/dto/Member;-><init>()V

    .restart local v3       #member:Lkr/co/medinbiz/dto/Member;
    goto :goto_3

    .line 75
    :cond_8
    const-string v7, "notice"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 76
    new-instance v4, Lkr/co/medinbiz/dto/Notice;

    .end local v4           #notice:Lkr/co/medinbiz/dto/Notice;
    invoke-direct {v4}, Lkr/co/medinbiz/dto/Notice;-><init>()V

    .restart local v4       #notice:Lkr/co/medinbiz/dto/Notice;
    goto/16 :goto_3

    .line 115
    :pswitch_1
    iget-object v7, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 116
    const-string v7, "root"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 117
    const/4 v0, 0x1

    .line 118
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 119
    :cond_9
    const-string v7, "member"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 120
    invoke-virtual {v5, v3}, Lkr/co/medinbiz/dto/Roots;->setMember(Lkr/co/medinbiz/dto/Member;)V

    .line 121
    const/4 v3, 0x0

    .line 122
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 123
    :cond_a
    const-string v7, "notice"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 124
    invoke-virtual {v5, v4}, Lkr/co/medinbiz/dto/Roots;->setNotice(Lkr/co/medinbiz/dto/Notice;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    const/4 v4, 0x0

    .line 126
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getVideoList(Ljava/io/InputStream;)Lkr/co/medinbiz/dto/VideoList;
    .locals 12
    .parameter "in"

    .prologue
    const/4 v11, 0x4

    .line 304
    new-instance v7, Lkr/co/medinbiz/dto/VideoList;

    invoke-direct {v7}, Lkr/co/medinbiz/dto/VideoList;-><init>()V

    .line 307
    .local v7, videoList:Lkr/co/medinbiz/dto/VideoList;
    :try_start_0
    iget-object v8, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 309
    iget-object v8, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 310
    .local v2, eventType:I
    const/4 v0, 0x0

    .line 311
    .local v0, done:Z
    const/4 v5, 0x0

    .line 312
    .local v5, ultra:Lkr/co/medinbiz/dto/Ultra;
    const/4 v6, 0x0

    .line 313
    .local v6, ultraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Ultra;>;"
    const/4 v4, 0x0

    .line 314
    .local v4, tagName:Ljava/lang/String;
    :goto_0
    const/4 v8, 0x1

    if-eq v2, v8, :cond_0

    if-eqz v0, :cond_1

    .line 402
    .end local v0           #done:Z
    .end local v2           #eventType:I
    .end local v4           #tagName:Ljava/lang/String;
    .end local v5           #ultra:Lkr/co/medinbiz/dto/Ultra;
    .end local v6           #ultraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Ultra;>;"
    :cond_0
    :goto_1
    return-object v7

    .line 316
    .restart local v0       #done:Z
    .restart local v2       #eventType:I
    .restart local v4       #tagName:Ljava/lang/String;
    .restart local v5       #ultra:Lkr/co/medinbiz/dto/Ultra;
    .restart local v6       #ultraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Ultra;>;"
    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 397
    :cond_2
    :goto_2
    iget-object v8, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 319
    :pswitch_0
    iget-object v8, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 320
    const-string v8, "movieList"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 322
    iget-object v8, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v9, 0x0

    .line 323
    const-string v10, "result"

    .line 322
    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lkr/co/medinbiz/dto/VideoList;->setResult(Ljava/lang/String;)V

    .line 324
    iget-object v8, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v9, 0x0

    .line 325
    const-string v10, "totalpage"

    .line 324
    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lkr/co/medinbiz/dto/VideoList;->setTotalpage(Ljava/lang/String;)V

    .line 326
    iget-object v8, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v9, 0x0

    .line 327
    const-string v10, "totalmovie"

    .line 326
    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lkr/co/medinbiz/dto/VideoList;->setTotalmovie(Ljava/lang/String;)V

    .line 328
    iget-object v8, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v9, 0x0

    .line 329
    const-string v10, "diffcount"

    .line 328
    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lkr/co/medinbiz/dto/VideoList;->setDiffcount(Ljava/lang/String;)V

    .line 343
    :cond_3
    :goto_3
    const-string v8, "date"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 345
    iget-object v8, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 346
    if-ne v2, v11, :cond_4

    .line 348
    iget-object v8, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lkr/co/medinbiz/dto/Ultra;->setDate(Ljava/lang/String;)V

    .line 351
    :cond_4
    const-string v8, "place"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 352
    iget-object v8, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 353
    if-ne v2, v11, :cond_5

    .line 355
    iget-object v8, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lkr/co/medinbiz/dto/Ultra;->setPlace(Ljava/lang/String;)V

    .line 359
    :cond_5
    const-string v8, "mp4Url"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 360
    iget-object v8, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 361
    if-ne v2, v11, :cond_6

    .line 363
    iget-object v8, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lkr/co/medinbiz/dto/Ultra;->setMp4Url(Ljava/lang/String;)V

    .line 367
    :cond_6
    const-string v8, "ThumbnailUrl"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 368
    iget-object v8, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 369
    if-ne v2, v11, :cond_7

    .line 371
    iget-object v8, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lkr/co/medinbiz/dto/Ultra;->setThumbnailUrl(Ljava/lang/String;)V

    .line 375
    :cond_7
    const-string v8, "wmvUrl"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 376
    iget-object v8, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 377
    if-ne v2, v11, :cond_2

    .line 378
    iget-object v8, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v5, v3}, Lkr/co/medinbiz/dto/Ultra;->setMp4Url(Ljava/lang/String;)V

    .line 380
    const-string v8, ".wmv"

    const-string v9, ".jpg"

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lkr/co/medinbiz/dto/Ultra;->setThumbnailUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 399
    .end local v0           #done:Z
    .end local v2           #eventType:I
    .end local v3           #s:Ljava/lang/String;
    .end local v4           #tagName:Ljava/lang/String;
    .end local v5           #ultra:Lkr/co/medinbiz/dto/Ultra;
    .end local v6           #ultraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Ultra;>;"
    :catch_0
    move-exception v1

    .line 400
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 335
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #done:Z
    .restart local v2       #eventType:I
    .restart local v4       #tagName:Ljava/lang/String;
    .restart local v5       #ultra:Lkr/co/medinbiz/dto/Ultra;
    .restart local v6       #ultraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Ultra;>;"
    :cond_8
    :try_start_1
    const-string v8, "movie"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 337
    if-nez v6, :cond_9

    .line 338
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #ultraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Ultra;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .restart local v6       #ultraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Ultra;>;"
    :cond_9
    new-instance v5, Lkr/co/medinbiz/dto/Ultra;

    .end local v5           #ultra:Lkr/co/medinbiz/dto/Ultra;
    invoke-direct {v5}, Lkr/co/medinbiz/dto/Ultra;-><init>()V

    .restart local v5       #ultra:Lkr/co/medinbiz/dto/Ultra;
    goto/16 :goto_3

    .line 385
    :pswitch_1
    iget-object v8, p0, Lkr/co/medinbiz/helper/XmlParserHelper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 386
    const-string v8, "movieList"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 387
    invoke-virtual {v7, v6}, Lkr/co/medinbiz/dto/VideoList;->setUltras(Ljava/util/ArrayList;)V

    .line 388
    const/4 v0, 0x1

    .line 389
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 390
    :cond_a
    const-string v8, "movie"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 391
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 392
    const/4 v5, 0x0

    .line 393
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 316
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
