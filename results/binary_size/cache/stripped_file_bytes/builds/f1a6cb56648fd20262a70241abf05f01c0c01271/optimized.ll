; ModuleID = '<stdin>'
source_filename = "/tmp/tmpay6wul7h.cpp"
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

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i45 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %vla1 = alloca [41 x i8], i64 %4, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %5 = phi i32 [ %.pre, %for.body ], [ %3, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %6 = sext i32 %5 to i64
  %cmp = icmp slt i64 %indvars.iv, %6
  br i1 %cmp, label %for.body, label %for.cond9

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [41 x i8], ptr %vla1, i64 %indvars.iv
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 9223372036854775807)
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx) #7
  %conv = trunc i64 %call6 to i32
  %arrayidx8 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  store i32 %conv, ptr %arrayidx8, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.cond9:                                        ; preds = %for.cond, %for.inc56
  %7 = phi i32 [ %.pre96, %for.inc56 ], [ %5, %for.cond ]
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %for.inc56 ], [ 0, %for.cond ]
  %record.0 = phi i32 [ %record.178, %for.inc56 ], [ 0, %for.cond ]
  %totallenth.0 = phi i32 [ %totallenth.179, %for.inc56 ], [ 0, %for.cond ]
  %8 = sext i32 %7 to i64
  %cmp10 = icmp slt i64 %indvars.iv92, %8
  br i1 %cmp10, label %for.body11, label %for.end58

for.body11:                                       ; preds = %for.cond9
  %arrayidx13 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv92
  %9 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %add = add nsw i32 %9, 1
  %add14 = add nsw i32 %add, %totallenth.0
  %cmp15 = icmp sgt i32 %add14, 81
  br i1 %cmp15, label %for.cond16.preheader, label %if.end34

for.cond16.preheader:                             ; preds = %for.body11
  %10 = zext nneg i32 %record.0 to i64
  %11 = add nuw nsw i64 %indvars.iv92, 4294967295
  %12 = and i64 %11, 4294967295
  br label %for.cond16

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc28
  %indvars.iv89 = phi i64 [ %10, %for.cond16.preheader ], [ %indvars.iv.next90, %for.inc28 ]
  %cmp17.not.not = icmp samesign ult i64 %indvars.iv89, %indvars.iv92
  br i1 %cmp17.not.not, label %for.body18, label %for.inc56.loopexit

for.body18:                                       ; preds = %for.cond16
  %arrayidx20 = getelementptr inbounds nuw [41 x i8], ptr %vla1, i64 %indvars.iv89
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx20) #6
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx20, i64 noundef %call.i.i)
  %cmp24.not = icmp eq i64 %indvars.iv89, %12
  br i1 %cmp24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %for.body18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !12
  %vtable.i31 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i32 = getelementptr i8, ptr %vtable.i31, i64 -24
  %vbase.offset.i33 = load i64, ptr %vbase.offset.ptr.i32, align 8
  %gep83 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i33
  %13 = load i64, ptr %gep83, align 8, !tbaa !15
  %cmp.not.i = icmp eq i64 %13, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then25
  %call1.i36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.then25
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  br label %for.inc28

if.else:                                          ; preds = %for.body18
  %vtable.i59 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i60 = getelementptr i8, ptr %vtable.i59, i64 -24
  %vbase.offset.i61 = load i64, ptr %vbase.offset.ptr.i60, align 8
  %add.ptr.i62 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i61
  %call.i63 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i62, i8 noundef signext 10)
  %call1.i64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i63)
  %call.i.i65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i64)
  br label %for.inc28

for.inc28:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %if.else
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  br label %for.cond16, !llvm.loop !26

if.end34:                                         ; preds = %for.body11
  %sub35 = add nsw i32 %7, -1
  %14 = zext i32 %sub35 to i64
  %cmp36 = icmp ne i64 %indvars.iv92, %14
  %15 = zext i32 %record.0 to i64
  %cmp37.not = icmp eq i64 %indvars.iv92, %15
  %or.cond = select i1 %cmp36, i1 true, i1 %cmp37.not
  br i1 %or.cond, label %for.inc56, label %for.cond39

for.cond39:                                       ; preds = %if.end34, %for.inc52
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %for.inc52 ], [ %15, %if.end34 ]
  %cmp40.not = icmp samesign ugt i64 %indvars.iv86, %indvars.iv92
  br i1 %cmp40.not, label %for.inc56, label %for.body41

for.body41:                                       ; preds = %for.cond39
  %arrayidx43 = getelementptr inbounds nuw [41 x i8], ptr %vla1, i64 %indvars.iv86
  %call.i.i37 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx43) #6
  %call1.i38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx43, i64 noundef %call.i.i37)
  %cmp46.not = icmp eq i64 %indvars.iv86, %indvars.iv92
  br i1 %cmp46.not, label %if.else49, label %if.then47

if.then47:                                        ; preds = %for.body41
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i45)
  store i8 32, ptr %__c.addr.i45, align 1, !tbaa !12
  %vtable.i46 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i47 = getelementptr i8, ptr %vtable.i46, i64 -24
  %vbase.offset.i48 = load i64, ptr %vbase.offset.ptr.i47, align 8
  %gep82 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i48
  %16 = load i64, ptr %gep82, align 8, !tbaa !15
  %cmp.not.i51 = icmp eq i64 %16, 0
  br i1 %cmp.not.i51, label %if.end.i55, label %if.then.i52

if.then.i52:                                      ; preds = %if.then47
  %call1.i53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i45, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit57

if.end.i55:                                       ; preds = %if.then47
  %call2.i56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit57

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit57: ; preds = %if.then.i52, %if.end.i55
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i45)
  br label %for.inc52

if.else49:                                        ; preds = %for.body41
  %vtable.i66 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i67 = getelementptr i8, ptr %vtable.i66, i64 -24
  %vbase.offset.i68 = load i64, ptr %vbase.offset.ptr.i67, align 8
  %add.ptr.i69 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i68
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i69, i8 noundef signext 10)
  %call1.i70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i70)
  br label %for.inc52

for.inc52:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit57, %if.else49
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %for.cond39, !llvm.loop !27

for.inc56.loopexit:                               ; preds = %for.cond16
  %17 = trunc nuw nsw i64 %indvars.iv92 to i32
  br label %for.inc56

for.inc56:                                        ; preds = %for.cond39, %for.inc56.loopexit, %if.end34
  %totallenth.179 = phi i32 [ %add14, %if.end34 ], [ %add, %for.inc56.loopexit ], [ %add14, %for.cond39 ]
  %record.178 = phi i32 [ %record.0, %if.end34 ], [ %17, %for.inc56.loopexit ], [ %record.0, %for.cond39 ]
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %.pre96 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond9, !llvm.loop !28

for.end58:                                        ; preds = %for.cond9
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = !{!16, !17, i64 16}
!16 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !18, i64 24, !19, i64 28, !19, i64 32, !20, i64 40, !22, i64 48, !7, i64 64, !6, i64 192, !23, i64 200, !24, i64 208}
!17 = !{!"long", !7, i64 0}
!18 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!19 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!20 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !21, i64 0}
!21 = !{!"any pointer", !7, i64 0}
!22 = !{!"_ZTSNSt8ios_base6_WordsE", !21, i64 0, !17, i64 8}
!23 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !21, i64 0}
!24 = !{!"_ZTSSt6locale", !25, i64 0}
!25 = !{!"p1 _ZTSNSt6locale5_ImplE", !21, i64 0}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11}
