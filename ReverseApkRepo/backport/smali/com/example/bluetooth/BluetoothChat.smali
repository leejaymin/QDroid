.class public Lcom/example/bluetooth/BluetoothChat;
.super Landroid/app/Activity;
.source "BluetoothChat.java"


# static fields
.field private static final D:Z = true

.field public static final DEVICE_NAME:Ljava/lang/String; = "device_name"

.field public static final MESSAGE_DEVICE_NAME:I = 0x4

.field public static final MESSAGE_READ:I = 0x2

.field public static final MESSAGE_STATE_CHANGE:I = 0x1

.field public static final MESSAGE_TOAST:I = 0x5

.field public static final MESSAGE_WRITE:I = 0x3

.field private static final REQUEST_CONNECT_DEVICE:I = 0x1

.field private static final REQUEST_ENABLE_BT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothChat"

.field public static final TOAST:Ljava/lang/String; = "toast"


# instance fields
.field private mBluetoothAdapter:Lbackport/android/bluetooth/BluetoothAdapter;

.field private mChatService:Lcom/example/bluetooth/BluetoothChatService;

.field private mConnectedDeviceName:Ljava/lang/String;

.field private mConversationArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConversationView:Landroid/widget/ListView;

.field private final mHandler:Landroid/os/Handler;

.field private mOutEditText:Landroid/widget/EditText;

.field private mOutStringBuffer:Ljava/lang/StringBuffer;

.field private mSendButton:Landroid/widget/Button;

.field private mTitle:Landroid/widget/TextView;

.field private mWriteListener:Landroid/widget/TextView$OnEditorActionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mConnectedDeviceName:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mBluetoothAdapter:Lbackport/android/bluetooth/BluetoothAdapter;

    .line 81
    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mChatService:Lcom/example/bluetooth/BluetoothChatService;

    .line 228
    new-instance v0, Lcom/example/bluetooth/BluetoothChat$1;

    invoke-direct {v0, p0}, Lcom/example/bluetooth/BluetoothChat$1;-><init>(Lcom/example/bluetooth/BluetoothChat;)V

    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mWriteListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 241
    new-instance v0, Lcom/example/bluetooth/BluetoothChat$2;

    invoke-direct {v0, p0}, Lcom/example/bluetooth/BluetoothChat$2;-><init>(Lcom/example/bluetooth/BluetoothChat;)V

    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/example/bluetooth/BluetoothChat;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/example/bluetooth/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/example/bluetooth/BluetoothChat;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/example/bluetooth/BluetoothChat;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mConnectedDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/example/bluetooth/BluetoothChat;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mConversationArrayAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/example/bluetooth/BluetoothChat;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/example/bluetooth/BluetoothChat;->mConnectedDeviceName:Ljava/lang/String;

    return-void
.end method

.method private ensureDiscoverable()V
    .locals 3

    .prologue
    .line 194
    const-string v1, "BluetoothChat"

    const-string v2, "ensure discoverable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lcom/example/bluetooth/BluetoothChat;->mBluetoothAdapter:Lbackport/android/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Lbackport/android/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    .line 196
    const/16 v2, 0x17

    .line 195
    if-eq v1, v2, :cond_0

    .line 197
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lbackport/android/bluetooth/BluetoothAdapter;->ACTION_REQUEST_DISCOVERABLE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, discoverableIntent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v0}, Lcom/example/bluetooth/BluetoothChat;->startActivity(Landroid/content/Intent;)V

    .line 201
    .end local v0           #discoverableIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private sendMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 209
    iget-object v1, p0, Lcom/example/bluetooth/BluetoothChat;->mChatService:Lcom/example/bluetooth/BluetoothChatService;

    invoke-virtual {v1}, Lcom/example/bluetooth/BluetoothChatService;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 210
    const v1, 0x7f040005

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 217
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 218
    .local v0, send:[B
    iget-object v1, p0, Lcom/example/bluetooth/BluetoothChat;->mChatService:Lcom/example/bluetooth/BluetoothChatService;

    invoke-virtual {v1, v0}, Lcom/example/bluetooth/BluetoothChatService;->write([B)V

    .line 221
    iget-object v1, p0, Lcom/example/bluetooth/BluetoothChat;->mOutStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 222
    iget-object v1, p0, Lcom/example/bluetooth/BluetoothChat;->mOutEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChat;->mOutStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setupChat()V
    .locals 2

    .prologue
    .line 144
    const-string v0, "BluetoothChat"

    const-string v1, "setupChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030007

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mConversationArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 148
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/example/bluetooth/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mConversationView:Landroid/widget/ListView;

    .line 149
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mConversationView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/example/bluetooth/BluetoothChat;->mConversationArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/example/bluetooth/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mOutEditText:Landroid/widget/EditText;

    .line 153
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mOutEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/example/bluetooth/BluetoothChat;->mWriteListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 156
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lcom/example/bluetooth/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mSendButton:Landroid/widget/Button;

    .line 157
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mSendButton:Landroid/widget/Button;

    new-instance v1, Lcom/example/bluetooth/BluetoothChat$3;

    invoke-direct {v1, p0}, Lcom/example/bluetooth/BluetoothChat$3;-><init>(Lcom/example/bluetooth/BluetoothChat;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    new-instance v0, Lcom/example/bluetooth/BluetoothChatService;

    iget-object v1, p0, Lcom/example/bluetooth/BluetoothChat;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/example/bluetooth/BluetoothChatService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mChatService:Lcom/example/bluetooth/BluetoothChatService;

    .line 170
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mOutStringBuffer:Ljava/lang/StringBuffer;

    .line 171
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    const-string v5, "BluetoothChat"

    .line 289
    const-string v2, "BluetoothChat"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityResult "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    packed-switch p1, :pswitch_data_0

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 293
    :pswitch_0
    if-ne p2, v4, :cond_0

    .line 295
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 296
    sget-object v3, Lcom/example/bluetooth/DeviceListActivity;->EXTRA_DEVICE_ADDRESS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, address:Ljava/lang/String;
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChat;->mBluetoothAdapter:Lbackport/android/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v0}, Lbackport/android/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Lbackport/android/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 300
    .local v1, device:Lbackport/android/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChat;->mChatService:Lcom/example/bluetooth/BluetoothChatService;

    invoke-virtual {v2, v1}, Lcom/example/bluetooth/BluetoothChatService;->connect(Lbackport/android/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 305
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #device:Lbackport/android/bluetooth/BluetoothDevice;
    :pswitch_1
    if-ne p2, v4, :cond_1

    .line 307
    invoke-direct {p0}, Lcom/example/bluetooth/BluetoothChat;->setupChat()V

    goto :goto_0

    .line 310
    :cond_1
    const-string v2, "BluetoothChat"

    const-string v2, "BT not enabled"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const v2, 0x7f040006

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 312
    invoke-virtual {p0}, Lcom/example/bluetooth/BluetoothChat;->finish()V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x7

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const-string v0, "BluetoothChat"

    const-string v1, "+++ ON CREATE +++"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0, v2}, Lcom/example/bluetooth/BluetoothChat;->requestWindowFeature(I)Z

    .line 91
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/example/bluetooth/BluetoothChat;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/example/bluetooth/BluetoothChat;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 95
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/example/bluetooth/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mTitle:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/example/bluetooth/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mTitle:Landroid/widget/TextView;

    .line 100
    invoke-static {}, Lbackport/android/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lbackport/android/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mBluetoothAdapter:Lbackport/android/bluetooth/BluetoothAdapter;

    .line 103
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mBluetoothAdapter:Lbackport/android/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 104
    const-string v0, "Bluetooth is not available"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    invoke-virtual {p0}, Lcom/example/bluetooth/BluetoothChat;->finish()V

    .line 108
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/example/bluetooth/BluetoothChat;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 320
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 321
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 189
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mChatService:Lcom/example/bluetooth/BluetoothChatService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mChatService:Lcom/example/bluetooth/BluetoothChatService;

    invoke-virtual {v0}, Lcom/example/bluetooth/BluetoothChatService;->stop()V

    .line 190
    :cond_0
    const-string v0, "BluetoothChat"

    const-string v1, "--- ON DESTROY ---"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 326
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 337
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 329
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/bluetooth/DeviceListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    .local v0, serverIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/example/bluetooth/BluetoothChat;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v2

    .line 331
    goto :goto_0

    .line 334
    .end local v0           #serverIntent:Landroid/content/Intent;
    :pswitch_1
    invoke-direct {p0}, Lcom/example/bluetooth/BluetoothChat;->ensureDiscoverable()V

    move v1, v2

    .line 335
    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x7f06000b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized onPause()V
    .locals 2

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 176
    const-string v0, "BluetoothChat"

    const-string v1, "- ON PAUSE -"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResume()V
    .locals 2

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 129
    const-string v0, "BluetoothChat"

    const-string v1, "+ ON RESUME +"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mChatService:Lcom/example/bluetooth/BluetoothChatService;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mChatService:Lcom/example/bluetooth/BluetoothChatService;

    invoke-virtual {v0}, Lcom/example/bluetooth/BluetoothChatService;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChat;->mChatService:Lcom/example/bluetooth/BluetoothChatService;

    invoke-virtual {v0}, Lcom/example/bluetooth/BluetoothChatService;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 113
    const-string v1, "BluetoothChat"

    const-string v2, "++ ON START ++"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/example/bluetooth/BluetoothChat;->mBluetoothAdapter:Lbackport/android/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Lbackport/android/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lbackport/android/bluetooth/BluetoothAdapter;->ACTION_REQUEST_ENABLE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, enableIntent:Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/example/bluetooth/BluetoothChat;->startActivityForResult(Landroid/content/Intent;I)V

    .line 124
    .end local v0           #enableIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/example/bluetooth/BluetoothChat;->mChatService:Lcom/example/bluetooth/BluetoothChatService;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/example/bluetooth/BluetoothChat;->setupChat()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 182
    const-string v0, "BluetoothChat"

    const-string v1, "-- ON STOP --"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method
