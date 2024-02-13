*** Variables ***
${lbl_book}    //div[@class="cart-item-table"]
${lbl_book_name}    //div[@class="cart-item-table"][index]//div[@class="cart-item-detail"]/p[1]
${btn_remove_book}    //div[@class="cart-item-table"][1]//*[@class="delete-item"]
${btn_confirm_remove_book}    //button[text()="ใช่ ลบรายการ"]
${lbl_cart_total}    //div[@id="badge-cart"]
${btn_up_page}    //*[@class="back-to-top"]
${lbl_empty_book}    //*[text()="ยังไม่มีรายการสินค้าในตะกร้า โปรดสั่งซื้อสินค้า"]