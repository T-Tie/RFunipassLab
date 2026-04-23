; ModuleID = '<stdin>'
source_filename = "/tmp/tmptvao9vex.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i65 = alloca i8, align 1
  %__c.addr.i52 = alloca i8, align 1
  %__c.addr.i36 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %str = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %str) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %str, i64 noundef 100)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %j.0 = phi i32 [ %1, %for.cond ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp.not = icmp eq i8 %0, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %cmp.not, label %for.cond1.preheader, label %for.cond, !llvm.loop !8

for.cond1.preheader:                              ; preds = %for.cond
  %2 = add nuw i32 %j.0, 1
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv87 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next88, %for.body3 ]
  %l.0 = phi i32 [ 0, %for.cond1.preheader ], [ %spec.select, %for.body3 ]
  %exitcond = icmp eq i64 %indvars.iv87, %wide.trip.count
  br i1 %exitcond, label %for.end10, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv87
  %3 = load i8, ptr %arrayidx5, align 1, !tbaa !5
  %cmp7 = icmp eq i8 %3, 32
  %add = zext i1 %cmp7 to i32
  %spec.select = add nuw nsw i32 %l.0, %add
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  br label %for.cond1, !llvm.loop !11

for.end10:                                        ; preds = %for.cond1
  %cmp11.not = icmp eq i32 %l.0, 0
  br i1 %cmp11.not, label %for.cond74.preheader, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.end10
  %4 = zext i32 %j.0 to i64
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.body15
  %indvars.iv92 = phi i64 [ %4, %for.cond13.preheader ], [ %indvars.iv.next93, %for.body15 ]
  %cmp14 = icmp sgt i64 %indvars.iv92, 0
  br i1 %cmp14, label %for.body15, label %for.cond35.preheader

for.body15:                                       ; preds = %for.cond13
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, -1
  %arrayidx17 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv.next93
  %5 = load i8, ptr %arrayidx17, align 1, !tbaa !5
  %cmp19 = icmp eq i8 %5, 32
  br i1 %cmp19, label %for.cond22.preheader, label %for.cond13, !llvm.loop !12

for.cond22.preheader:                             ; preds = %for.body15
  %sext = sext i32 %j.0 to i64
  br label %for.cond22

for.cond22:                                       ; preds = %for.cond22.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv96 = phi i64 [ %indvars.iv92, %for.cond22.preheader ], [ %indvars.iv.next97, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %6 = icmp sgt i64 %indvars.iv96, %sext
  br i1 %6, label %for.end33.loopexit, label %for.body24

for.body24:                                       ; preds = %for.cond22
  %arrayidx26 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv96
  %7 = load i8, ptr %arrayidx26, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %7, ptr %__c.addr.i, align 1, !tbaa !5
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %8 = load i64, ptr %gep, align 8, !tbaa !15
  %cmp.not.i = icmp eq i64 %8, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body24
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body24
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %7)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  br label %for.cond22, !llvm.loop !27

for.end33.loopexit:                               ; preds = %for.cond22
  %9 = trunc nsw i64 %indvars.iv.next93 to i32
  %.pre = and i64 %indvars.iv.next93, 4294967295
  br label %for.cond35.preheader

for.cond35.preheader:                             ; preds = %for.cond13, %for.end33.loopexit
  %indvars.iv99.ph = phi i64 [ %.pre, %for.end33.loopexit ], [ %4, %for.cond13 ]
  %j.3.ph = phi i32 [ %9, %for.end33.loopexit ], [ %j.0, %for.cond13 ]
  br label %for.cond35.outer

for.cond35.outer:                                 ; preds = %for.cond45, %for.cond35.preheader
  %indvars.iv99.ph122 = phi i64 [ %indvars.iv99.ph, %for.cond35.preheader ], [ %indvars.iv.next100, %for.cond45 ]
  %j.3.ph123 = phi i32 [ %j.3.ph, %for.cond35.preheader ], [ %indvars.le, %for.cond45 ]
  br label %for.cond35

for.cond35:                                       ; preds = %for.cond35.outer, %for.body37
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.body37 ], [ %indvars.iv99.ph122, %for.cond35.outer ]
  %10 = trunc nuw i64 %indvars.iv99 to i32
  %cmp36 = icmp sgt i32 %10, 0
  br i1 %cmp36, label %for.body37, label %for.end57

for.body37:                                       ; preds = %for.cond35
  %indvars.iv.next100 = add nsw i64 %indvars.iv99, -1
  %idxprom38 = and i64 %indvars.iv.next100, 4294967295
  %arrayidx39 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %idxprom38
  %11 = load i8, ptr %arrayidx39, align 1, !tbaa !5
  %cmp41 = icmp eq i8 %11, 32
  br i1 %cmp41, label %if.then42, label %for.cond35, !llvm.loop !28

if.then42:                                        ; preds = %for.body37
  %indvars.le = trunc i64 %indvars.iv.next100 to i32
  %call1.i34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.cond45

for.cond45:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit48, %if.then42
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit48 ], [ %indvars.iv99, %if.then42 ]
  %12 = trunc nuw i64 %indvars.iv101 to i32
  %cmp46 = icmp sgt i32 %j.3.ph123, %12
  br i1 %cmp46, label %for.body47, label %for.cond35.outer, !llvm.loop !28

for.body47:                                       ; preds = %for.cond45
  %arrayidx49 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv101
  %13 = load i8, ptr %arrayidx49, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i36)
  store i8 %13, ptr %__c.addr.i36, align 1, !tbaa !5
  %vtable.i37 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i38 = getelementptr i8, ptr %vtable.i37, i64 -24
  %vbase.offset.i39 = load i64, ptr %vbase.offset.ptr.i38, align 8
  %gep81 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i39
  %14 = load i64, ptr %gep81, align 8, !tbaa !15
  %cmp.not.i42 = icmp eq i64 %14, 0
  br i1 %cmp.not.i42, label %if.end.i46, label %if.then.i43

if.then.i43:                                      ; preds = %for.body47
  %call1.i44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i36, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit48

if.end.i46:                                       ; preds = %for.body47
  %call2.i47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %13)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit48

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit48: ; preds = %if.then.i43, %if.end.i46
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i36)
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  br label %for.cond45, !llvm.loop !29

for.end57:                                        ; preds = %for.cond35
  %call1.i50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.cond59

for.cond59:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit64, %for.end57
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit64 ], [ 0, %for.end57 ]
  %arrayidx61 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv105
  %15 = load i8, ptr %arrayidx61, align 1, !tbaa !5
  %cmp63.not = icmp eq i8 %15, 32
  br i1 %cmp63.not, label %if.end83, label %for.body64

for.body64:                                       ; preds = %for.cond59
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i52)
  store i8 %15, ptr %__c.addr.i52, align 1, !tbaa !5
  %vtable.i53 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i54 = getelementptr i8, ptr %vtable.i53, i64 -24
  %vbase.offset.i55 = load i64, ptr %vbase.offset.ptr.i54, align 8
  %gep82 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i55
  %16 = load i64, ptr %gep82, align 8, !tbaa !15
  %cmp.not.i58 = icmp eq i64 %16, 0
  br i1 %cmp.not.i58, label %if.end.i62, label %if.then.i59

if.then.i59:                                      ; preds = %for.body64
  %call1.i60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i52, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit64

if.end.i62:                                       ; preds = %for.body64
  %call2.i63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %15)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit64

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit64: ; preds = %if.then.i59, %if.end.i62
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i52)
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  br label %for.cond59, !llvm.loop !30

for.cond74.preheader:                             ; preds = %for.end10
  %smax = call i32 @llvm.smax.i32(i32 %j.0, i32 -1)
  %17 = add i32 %smax, 1
  %wide.trip.count113 = zext i32 %17 to i64
  br label %for.cond74

for.cond74:                                       ; preds = %for.cond74.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit77
  %indvars.iv109 = phi i64 [ 0, %for.cond74.preheader ], [ %indvars.iv.next110, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit77 ]
  %exitcond114 = icmp eq i64 %indvars.iv109, %wide.trip.count113
  br i1 %exitcond114, label %if.end83, label %for.body76

for.body76:                                       ; preds = %for.cond74
  %arrayidx78 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv109
  %18 = load i8, ptr %arrayidx78, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i65)
  store i8 %18, ptr %__c.addr.i65, align 1, !tbaa !5
  %vtable.i66 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i67 = getelementptr i8, ptr %vtable.i66, i64 -24
  %vbase.offset.i68 = load i64, ptr %vbase.offset.ptr.i67, align 8
  %gep83 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i68
  %19 = load i64, ptr %gep83, align 8, !tbaa !15
  %cmp.not.i71 = icmp eq i64 %19, 0
  br i1 %cmp.not.i71, label %if.end.i75, label %if.then.i72

if.then.i72:                                      ; preds = %for.body76
  %call1.i73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i65, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit77

if.end.i75:                                       ; preds = %for.body76
  %call2.i76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %18)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit77

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit77: ; preds = %if.then.i72, %if.end.i75
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i65)
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  br label %for.cond74, !llvm.loop !31

if.end83:                                         ; preds = %for.cond59, %for.cond74
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %str) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !7, i64 0}
!15 = !{!16, !17, i64 16}
!16 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !18, i64 24, !19, i64 28, !19, i64 32, !20, i64 40, !22, i64 48, !6, i64 64, !23, i64 192, !24, i64 200, !25, i64 208}
!17 = !{!"long", !6, i64 0}
!18 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!19 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!20 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !21, i64 0}
!21 = !{!"any pointer", !6, i64 0}
!22 = !{!"_ZTSNSt8ios_base6_WordsE", !21, i64 0, !17, i64 8}
!23 = !{!"int", !6, i64 0}
!24 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !21, i64 0}
!25 = !{!"_ZTSSt6locale", !26, i64 0}
!26 = !{!"p1 _ZTSNSt6locale5_ImplE", !21, i64 0}
!27 = distinct !{!27, !9, !10}
!28 = distinct !{!28, !9, !10}
!29 = distinct !{!29, !9, !10}
!30 = distinct !{!30, !9, !10}
!31 = distinct !{!31, !9, !10}
