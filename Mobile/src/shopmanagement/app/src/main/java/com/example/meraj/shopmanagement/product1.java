package com.example.meraj.shopmanagement;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

public class product1 extends AppCompatActivity {

    String email;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.product1);
        email=getIntent().getExtras().getString("email");
    }
   public void addproduct(View view)
   {
       Intent intent=new Intent(product1.this,Add.class );
       intent.putExtra("email",email);
       startActivity(intent);
   }
    public void product(View view)
    {
        Intent intent=new Intent(product1.this,Showing_All_Product.class );
        intent.putExtra("email",email);
        startActivity(intent);
    }

}
