; ModuleID = '<stdin>'
source_filename = "/tmp/tmpd4onlew2.cpp"
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
  %__c.addr.i27 = alloca i8, align 1
  %__c.addr.i14 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %str = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %str) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %str, i64 noundef 100)
  %strlen = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str)
  %0 = trunc i64 %strlen to i32
  %add = add nuw nsw i32 %0, 1
  %1 = and i64 %strlen, 4294967295
  br label %for.cond1.outer

for.cond1.outer:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26, %entry
  %indvars.iv.ph = phi i64 [ %4, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26 ], [ %1, %entry ]
  %a.0.ph = phi i32 [ %2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26 ], [ %add, %entry ]
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.outer, %for.body3
  %indvars.iv = phi i64 [ %4, %for.body3 ], [ %indvars.iv.ph, %for.cond1.outer ]
  %2 = trunc nuw i64 %indvars.iv to i32
  %cmp2 = icmp sgt i32 %2, 0
  br i1 %cmp2, label %for.body3, label %for.cond22.preheader

for.cond22.preheader:                             ; preds = %for.cond1
  %3 = call i32 @llvm.smax.i32(i32 %a.0.ph, i32 1)
  %smax = add nsw i32 %3, -1
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond22

for.body3:                                        ; preds = %for.cond1
  %4 = add nsw i64 %indvars.iv, -1
  %arrayidx5 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %4
  %5 = load i8, ptr %arrayidx5, align 1, !tbaa !5
  %cmp7 = icmp eq i8 %5, 32
  br i1 %cmp7, label %if.then, label %for.cond1, !llvm.loop !8

if.then:                                          ; preds = %for.body3
  %sub8 = add nsw i32 %a.0.ph, -1
  br label %for.cond10

for.cond10:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %if.then
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %indvars.iv, %if.then ]
  %6 = trunc nuw i64 %indvars.iv43 to i32
  %cmp11 = icmp sgt i32 %sub8, %6
  br i1 %cmp11, label %for.body12, label %for.end18

for.body12:                                       ; preds = %for.cond10
  %arrayidx14 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv43
  %7 = load i8, ptr %arrayidx14, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %7, ptr %__c.addr.i, align 1, !tbaa !5
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %8 = load i64, ptr %gep, align 8, !tbaa !13
  %cmp.not.i = icmp eq i64 %8, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body12
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body12
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %7)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond10, !llvm.loop !25

for.end18:                                        ; preds = %for.cond10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i14)
  store i8 32, ptr %__c.addr.i14, align 1, !tbaa !5
  %vtable.i15 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i16 = getelementptr i8, ptr %vtable.i15, i64 -24
  %vbase.offset.i17 = load i64, ptr %vbase.offset.ptr.i16, align 8
  %gep40 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i17
  %9 = load i64, ptr %gep40, align 8, !tbaa !13
  %cmp.not.i20 = icmp eq i64 %9, 0
  br i1 %cmp.not.i20, label %if.end.i24, label %if.then.i21

if.then.i21:                                      ; preds = %for.end18
  %call1.i22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i14, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

if.end.i24:                                       ; preds = %for.end18
  %call2.i25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26: ; preds = %if.then.i21, %if.end.i24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i14)
  br label %for.cond1.outer, !llvm.loop !8

for.cond22:                                       ; preds = %for.cond22.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39
  %indvars.iv48 = phi i64 [ 0, %for.cond22.preheader ], [ %indvars.iv.next49, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39 ]
  %exitcond.not = icmp eq i64 %indvars.iv48, %wide.trip.count
  br i1 %exitcond.not, label %for.end31, label %for.body25

for.body25:                                       ; preds = %for.cond22
  %arrayidx27 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv48
  %10 = load i8, ptr %arrayidx27, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i27)
  store i8 %10, ptr %__c.addr.i27, align 1, !tbaa !5
  %vtable.i28 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i29 = getelementptr i8, ptr %vtable.i28, i64 -24
  %vbase.offset.i30 = load i64, ptr %vbase.offset.ptr.i29, align 8
  %gep41 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i30
  %11 = load i64, ptr %gep41, align 8, !tbaa !13
  %cmp.not.i33 = icmp eq i64 %11, 0
  br i1 %cmp.not.i33, label %if.end.i37, label %if.then.i34

if.then.i34:                                      ; preds = %for.body25
  %call1.i35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i27, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39

if.end.i37:                                       ; preds = %for.body25
  %call2.i38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %10)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39: ; preds = %if.then.i34, %if.end.i37
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i27)
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond22, !llvm.loop !26

for.end31:                                        ; preds = %for.cond22
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %str) #6
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!14, !15, i64 16}
!14 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !16, i64 24, !17, i64 28, !17, i64 32, !18, i64 40, !20, i64 48, !6, i64 64, !21, i64 192, !22, i64 200, !23, i64 208}
!15 = !{!"long", !6, i64 0}
!16 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!17 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!18 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !19, i64 0}
!19 = !{!"any pointer", !6, i64 0}
!20 = !{!"_ZTSNSt8ios_base6_WordsE", !19, i64 0, !15, i64 8}
!21 = !{!"int", !6, i64 0}
!22 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !19, i64 0}
!23 = !{!"_ZTSSt6locale", !24, i64 0}
!24 = !{!"p1 _ZTSNSt6locale5_ImplE", !19, i64 0}
!25 = distinct !{!25, !9, !10}
!26 = distinct !{!26, !9, !10}
