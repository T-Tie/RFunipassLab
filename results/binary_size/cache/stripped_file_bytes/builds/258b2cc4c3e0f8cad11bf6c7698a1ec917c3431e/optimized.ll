; ModuleID = '<stdin>'
source_filename = "/tmp/tmpor6vgau_.cpp"
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
  %__c.addr.i = alloca i8, align 1
  %a = alloca [1000000 x i8], align 16
  %N = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1000000, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1000000) %a, i8 48, i64 1000000, i1 false), !tbaa !5
  store i8 50, ptr %a, align 16, !tbaa !5
  %0 = load i32, ptr %N, align 4, !tbaa !8
  %cmp2 = icmp eq i32 %0, 0
  br i1 %cmp2, label %if.then, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %entry
  %cmp523 = icmp sgt i32 %0, 1
  br i1 %cmp523, label %for.cond7.preheader.preheader, label %for.body54.preheader

for.cond7.preheader.preheader:                    ; preds = %for.cond4.preheader
  %1 = add nsw i32 %0, -2
  br label %vector.ph

if.then:                                          ; preds = %entry
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1)
  br label %if.end67

vector.ph:                                        ; preds = %for.inc49, %for.cond7.preheader.preheader
  %i.124 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond7.preheader.preheader ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %2 = getelementptr inbounds nuw [1000000 x i8], ptr %a, i64 0, i64 %index
  %wide.load = load <16 x i8>, ptr %2, align 16, !tbaa !5
  %3 = shl <16 x i8> %wide.load, splat (i8 1)
  %4 = add <16 x i8> %3, splat (i8 -96)
  store <16 x i8> %4, ptr %2, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 16
  %5 = icmp eq i64 %index.next, 1000000
  br i1 %5, label %for.body21, label %vector.body, !llvm.loop !10

for.body21:                                       ; preds = %vector.body, %for.inc46
  %indvars.iv29 = phi i64 [ %7, %for.inc46 ], [ 0, %vector.body ]
  %arrayidx23 = getelementptr inbounds nuw [1000000 x i8], ptr %a, i64 0, i64 %indvars.iv29
  %6 = load i8, ptr %arrayidx23, align 1, !tbaa !5
  %cmp25 = icmp sgt i8 %6, 9
  %7 = add nuw nsw i64 %indvars.iv29, 1
  br i1 %cmp25, label %if.then26, label %if.else38

if.then26:                                        ; preds = %for.body21
  %narrow = add nuw i8 %6, 38
  %arrayidx36 = getelementptr inbounds nuw [1000000 x i8], ptr %a, i64 0, i64 %7
  %8 = load i8, ptr %arrayidx36, align 1, !tbaa !5
  %inc37 = add i8 %8, 1
  store i8 %inc37, ptr %arrayidx36, align 1, !tbaa !5
  br label %for.inc46

if.else38:                                        ; preds = %for.body21
  %add42 = add nsw i8 %6, 48
  br label %for.inc46

for.inc46:                                        ; preds = %if.then26, %if.else38
  %add42.sink = phi i8 [ %narrow, %if.then26 ], [ %add42, %if.else38 ]
  store i8 %add42.sink, ptr %arrayidx23, align 1, !tbaa !5
  %exitcond33.not = icmp eq i64 %7, 1000000
  br i1 %exitcond33.not, label %for.inc49, label %for.body21, !llvm.loop !15

for.inc49:                                        ; preds = %for.inc46
  %inc50 = add nuw nsw i32 %i.124, 1
  %exitcond34.not = icmp eq i32 %i.124, %1
  br i1 %exitcond34.not, label %for.body54.preheader, label %vector.ph, !llvm.loop !16

for.body54.preheader:                             ; preds = %for.inc49, %for.cond4.preheader
  br label %for.body54

for.body54:                                       ; preds = %for.body54.preheader, %for.inc65
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.inc65 ], [ 999999, %for.body54.preheader ]
  %first.026 = phi i32 [ %first.1, %for.inc65 ], [ 0, %for.body54.preheader ]
  %arrayidx56 = getelementptr inbounds nuw [1000000 x i8], ptr %a, i64 0, i64 %indvars.iv35
  %9 = load i8, ptr %arrayidx56, align 1, !tbaa !5
  %cmp58 = icmp ne i8 %9, 48
  %cmp59 = icmp eq i32 %first.026, 1
  %or.cond = or i1 %cmp59, %cmp58
  br i1 %or.cond, label %if.then60, label %for.inc65

if.then60:                                        ; preds = %for.body54
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %9, ptr %__c.addr.i, align 1, !tbaa !5
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %10 = load i64, ptr %gep, align 8, !tbaa !19
  %cmp.not.i = icmp eq i64 %10, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then60
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.then60
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %9)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  br label %for.inc65

for.inc65:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %for.body54
  %first.1 = phi i32 [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 0, %for.body54 ]
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, -1
  %cmp53.not = icmp eq i64 %indvars.iv35, 0
  br i1 %cmp53.not, label %if.end67, label %for.body54, !llvm.loop !30

if.end67:                                         ; preds = %for.inc65, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #4
  call void @llvm.lifetime.end.p0(i64 1000000, ptr nonnull %a) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11, !12, !13, !14}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !7, i64 0}
!19 = !{!20, !21, i64 16}
!20 = !{!"_ZTSSt8ios_base", !21, i64 8, !21, i64 16, !22, i64 24, !23, i64 28, !23, i64 32, !24, i64 40, !26, i64 48, !6, i64 64, !9, i64 192, !27, i64 200, !28, i64 208}
!21 = !{!"long", !6, i64 0}
!22 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!23 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!24 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !25, i64 0}
!25 = !{!"any pointer", !6, i64 0}
!26 = !{!"_ZTSNSt8ios_base6_WordsE", !25, i64 0, !21, i64 8}
!27 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !25, i64 0}
!28 = !{!"_ZTSSt6locale", !29, i64 0}
!29 = !{!"p1 _ZTSNSt6locale5_ImplE", !25, i64 0}
!30 = distinct !{!30, !11, !12}
