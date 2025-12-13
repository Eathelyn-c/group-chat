 // // 获取DOM元素
 // const userSelector = document.getElementById('user-selector');
 // const chatHistory = document.getElementById('chat-history');
 // const chatForm = document.getElementById('chat-form');
 //
 // // 当用户选择改变时，更新聊天记录
 // userSelector.addEventListener('change', function() {
 //     const selectedUser = this.value;
 //     // 如果没有选择用户，清空聊天记录
 //     if (!selectedUser) {
 //         chatHistory.innerHTML = '<p>请选择一个用户开始聊天</p>';
 //         return;
 //     }
 //
 //     // 使用AJAX获取与选中用户的聊天记录
 //     fetchChatHistory(selectedUser);
 // });
 //
 //    // 使用AJAX获取聊天记录的函数
 //    function fetchChatHistory(selectedUser) {
 //    // 创建XMLHttpRequest对象
 //    const xhr = new XMLHttpRequest();
 //
 //    // 设置请求完成后的回调函数
 //    xhr.onreadystatechange = function() {
 //    if (xhr.readyState === 4 && xhr.status === 200) {
 //    // 更新聊天记录区域
 //    chatHistory.innerHTML = xhr.responseText;
 //
 //    // 滚动到底部
 //    chatHistory.scrollTop = chatHistory.scrollHeight;
 //    }
 //    };
 //
 //    // 发送请求到服务器获取聊天记录
 //    xhr.open('GET', 'chat-history?username2=' + encodeURIComponent(selectedUser), true);
 //    xhr.send();
 //    }
 //
 //    // 表单提交后清空消息输入框
 //    chatForm.addEventListener('submit', function() {
 //    // 短暂延迟后清空输入框，确保表单已提交
 //    setTimeout(function() {
 //        document.getElementById('message-input').value = '';
 //    }, 100);
 //    });
 //
 //    // 页面加载时，如果有选中的用户，确保聊天记录正确显示
 //    window.onload = function() {
 //    const selectedUser = userSelector.value;
 //    if (selectedUser) {
 //    // 滚动到底部
 //    chatHistory.scrollTop = chatHistory.scrollHeight;
 //    }
 //    };
 // chat.js - 不使用 AJAX 的聊天室功能


 // // 页面加载完成后执行
 // document.addEventListener('DOMContentLoaded', function() {
 //     // 获取DOM元素
 //     const userSelector = document.getElementById('user-selector');
 //     const chatForm = document.getElementById('chat-form');
 //     const messageInput = document.getElementById('message-input');
 //
 //     // 如果元素存在，添加事件监听
 //     if (userSelector) {
 //         // 创建用户切换表单
 //         createUserSwitchForm();
 //     }
 //
 //     // 表单提交后清空消息输入框
 //     if (chatForm && messageInput) {
 //         chatForm.addEventListener('submit', function() {
 //             // 短暂延迟后清空输入框，确保表单已提交
 //             setTimeout(function() {
 //                 messageInput.value = '';
 //             }, 100);
 //         });
 //     }
 //
 //     // 滚动聊天记录到底部
 //     scrollToBottom();
 // });
 //
 // // 创建用户切换表单
 // function createUserSwitchForm() {
 //     const userSelector = document.getElementById('user-selector');
 //     const chatForm = document.getElementById('chat-form');
 //
 //     // 如果已经存在用户切换表单，则不再创建
 //     if (document.querySelector('.user-switch-form')) {
 //         return;
 //     }
 //
 //     // 创建新的表单用于切换用户
 //     const switchForm = document.createElement('form');
 //     switchForm.method = 'post';
 //     switchForm.action = 'chat.jsp';
 //     switchForm.className = 'user-switch-form';
 //
 //     // 复制用户选择框
 //     const newUserSelector = userSelector.cloneNode(true);
 //     newUserSelector.id = 'user-switch-selector';
 //
 //     // 添加样式
 //     switchForm.style.marginBottom = '15px';
 //     switchForm.style.padding = '10px';
 //     switchForm.style.border = '1px solid #ddd';
 //     switchForm.style.backgroundColor = '#f9f9f9';
 //
 //     // 添加标题
 //     const title = document.createElement('h3');
 //     title.textContent = '快速切换用户:';
 //     switchForm.appendChild(title);
 //
 //     // 添加说明
 //     const note = document.createElement('p');
 //     note.innerHTML = '<small>选择用户后聊天记录会自动切换</small>';
 //     switchForm.appendChild(note);
 //
 //     // 添加选择框
 //     switchForm.appendChild(newUserSelector);
 //
 //     // 在聊天表单前插入新表单
 //     chatForm.parentNode.insertBefore(switchForm, chatForm);
 //
 //     // 添加事件监听 - 当选择改变时提交表单
 //     newUserSelector.addEventListener('change', function() {
 //         if (this.value) {
 //             this.form.submit();
 //         }
 //     });
 //
 //     // 隐藏原始的用户选择框
 //     const originalLabel = chatForm.querySelector('h2');
 //     if (originalLabel && originalLabel.textContent === '选择用户:') {
 //         originalLabel.style.display = 'none';
 //     }
 //     userSelector.style.display = 'none';
 // }
 //
 // // 滚动聊天记录到底部
 // function scrollToBottom() {
 //     const chatHistory = document.getElementById('chat-history');
 //     if (chatHistory) {
 //         chatHistory.scrollTop = chatHistory.scrollHeight;
 //     }
 // }
 //
 // // 添加页面可见性检测 - 当页面可见时刷新聊天记录
 // document.addEventListener('visibilitychange', function() {
 //     if (!document.hidden) {
 //         // 页面从后台切换到前台时刷新
 //         const userSelector = document.getElementById('user-selector');
 //         if (userSelector && userSelector.value) {
 //             location.reload();
 //         }
 //     }
 // });


 // 页面加载完成后执行
 document.addEventListener('DOMContentLoaded', function() {
     // 创建用户切换表单
     createUserSwitchForm();
 });

 // 创建用户切换表单
 function createUserSwitchForm() {
     const userSelector = document.getElementById('user-selector');
     const chatForm = document.getElementById('chat-form');

     // 如果元素不存在，则退出
     if (!userSelector || !chatForm) {
         return;
     }

     // 如果已经存在用户切换表单，则不再创建
     if (document.querySelector('.user-switch-form')) {
         return;
     }

     // 创建新的表单用于切换用户
     const switchForm = document.createElement('form');
     switchForm.method = 'get';
     switchForm.action = 'chat.jsp';
     switchForm.className = 'user-switch-form';

     // 复制用户选择框
     const newUserSelector = userSelector.cloneNode(true);
     newUserSelector.id = 'user-switch-selector';

     // 添加样式
     switchForm.style.marginBottom = '15px';
     switchForm.style.padding = '10px';
     switchForm.style.border = '1px solid #ddd';
     switchForm.style.backgroundColor = '#f9f9f9';

     // 添加标题
     const title = document.createElement('h3');
     title.textContent = '请选择用户:';
     switchForm.appendChild(title);

     // 添加选择框
     switchForm.appendChild(newUserSelector);

     // 在聊天表单前插入新表单
     chatForm.parentNode.insertBefore(switchForm, chatForm);

     // 添加事件监听 - 当选择改变时提交表单
     newUserSelector.addEventListener('change', function() {
         if (this.value) {
             this.form.submit();
         }
     });

     // 隐藏原始的用户选择框
     const originalLabel = chatForm.querySelector('h2');
     if (originalLabel && originalLabel.textContent === '选择用户:') {
         originalLabel.style.display = 'none';
     }
     userSelector.style.display = 'none';
 }