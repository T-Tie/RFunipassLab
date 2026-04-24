; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcngjffg9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%struct.information = type { [20 x i8], [20 x i8], i8, i32, [100 x i8], [20 x i8] }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i = alloca i8, align 1
  %stu = alloca [1000 x %struct.information], align 16
  call void @llvm.lifetime.start.p0(i64 168000, ptr nonnull %stu) #5
  br label %for.body

for.body:                                         ; preds = %entry, %if.else34.i20
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.else34.i20 ]
  %arrayidx = getelementptr inbounds nuw [1000 x %struct.information], ptr %stu, i64 0, i64 %indvars.iv
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 9223372036854775807)
  %0 = load i8, ptr %arrayidx, align 8, !tbaa !5
  %cmp5 = icmp eq i8 %0, 101
  br i1 %cmp5, label %land.lhs.true, label %if.else34.i20

land.lhs.true:                                    ; preds = %for.body
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 1
  %1 = load i8, ptr %arrayidx9, align 1, !tbaa !5
  %cmp11 = icmp eq i8 %1, 110
  br i1 %cmp11, label %land.lhs.true12, label %if.else34.i20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 2
  %2 = load i8, ptr %arrayidx16, align 2, !tbaa !5
  %cmp18 = icmp eq i8 %2, 100
  br i1 %cmp18, label %for.end, label %if.else34.i20

if.else34.i20:                                    ; preds = %for.body, %land.lhs.true, %land.lhs.true12
  %name = getelementptr inbounds nuw i8, ptr %arrayidx, i64 20
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %name, i64 noundef 9223372036854775807)
  %sex = getelementptr inbounds nuw i8, ptr %arrayidx, i64 40
  %call25 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 1 dereferenceable(1) %sex)
  %age = getelementptr inbounds nuw i8, ptr %arrayidx, i64 44
  %call28 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %age)
  %score = getelementptr inbounds nuw i8, ptr %arrayidx, i64 48
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %score, i64 noundef 9223372036854775807)
  %address = getelementptr inbounds nuw i8, ptr %arrayidx, i64 148
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %address, i64 noundef 9223372036854775807)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1000
  br i1 %exitcond.not, label %for.end75, label %for.body, !llvm.loop !8

for.end:                                          ; preds = %land.lhs.true12
  %cmp38224.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp38224.not, label %for.end75, label %for.body39.preheader

for.body39.preheader:                             ; preds = %for.end
  %sub = add nuw i64 %indvars.iv, 4294967295
  %3 = and i64 %sub, 4294967295
  br label %for.body39

for.body39:                                       ; preds = %for.body39.preheader, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %indvars.iv228 = phi i64 [ %3, %for.body39.preheader ], [ %indvars.iv.next229, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %arrayidx41 = getelementptr inbounds nuw [1000 x %struct.information], ptr %stu, i64 0, i64 %indvars.iv228
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx41) #5
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx41, i64 noundef %call.i.i)
  %call1.i162 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %name48 = getelementptr inbounds nuw i8, ptr %arrayidx41, i64 20
  %call.i.i163 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %name48) #5
  %call1.i164 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %name48, i64 noundef %call.i.i163)
  %call1.i172 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %sex54 = getelementptr inbounds nuw i8, ptr %arrayidx41, i64 40
  %4 = load i8, ptr %sex54, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %4, ptr %__c.addr.i, align 1, !tbaa !5
  %vtable.i173 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i174 = getelementptr i8, ptr %vtable.i173, i64 -24
  %vbase.offset.i175 = load i64, ptr %vbase.offset.ptr.i174, align 8
  %gep223 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i175
  %5 = load i64, ptr %gep223, align 8, !tbaa !16
  %cmp.not.i = icmp eq i64 %5, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body39
  %call1.i178 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body39
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %4)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi ptr [ %call1.i178, %if.then.i ], [ @_ZSt4cout, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %call1.i180 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i, ptr noundef nonnull @.str, i64 noundef 1)
  %age59 = getelementptr inbounds nuw i8, ptr %arrayidx41, i64 44
  %6 = load i32, ptr %age59, align 4, !tbaa !27
  %call60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i, i32 noundef %6)
  %call1.i183 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call60, ptr noundef nonnull @.str, i64 noundef 1)
  %score64 = getelementptr inbounds nuw i8, ptr %arrayidx41, i64 48
  %call.i.i185 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %score64) #5
  %call1.i186 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call60, ptr noundef nonnull %score64, i64 noundef %call.i.i185)
  %call1.i196 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call60, ptr noundef nonnull @.str, i64 noundef 1)
  %address70 = getelementptr inbounds nuw i8, ptr %arrayidx41, i64 148
  %call.i.i198 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %address70) #5
  %call1.i199 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call60, ptr noundef nonnull %address70, i64 noundef %call.i.i198)
  %vtable.i208 = load ptr, ptr %call60, align 8, !tbaa !14
  %vbase.offset.ptr.i209 = getelementptr i8, ptr %vtable.i208, i64 -24
  %vbase.offset.i210 = load i64, ptr %vbase.offset.ptr.i209, align 8
  %add.ptr.i211 = getelementptr inbounds i8, ptr %call60, i64 %vbase.offset.i210
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i211, i64 240
  %7 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !28
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  %8 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !36
  %tobool.not.i1.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 67
  %9 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %7)
  %vtable.i.i.i = load ptr, ptr %7, align 8, !tbaa !14
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %10 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %10(ptr noundef nonnull align 8 dereferenceable(570) %7, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %9, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i212 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call60, i8 noundef signext %retval.0.i.i.i)
  %call.i.i213 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i212)
  %indvars.iv.next229 = add nsw i64 %indvars.iv228, -1
  %cmp38 = icmp sgt i64 %indvars.iv228, 0
  br i1 %cmp38, label %for.body39, label %for.end75, !llvm.loop !42

for.end75:                                        ; preds = %if.else34.i20, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %for.end
  call void @llvm.lifetime.end.p0(i64 168000, ptr nonnull %stu) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

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
!11 = !{!12, !6, i64 40}
!12 = !{!"_ZTSZ4mainE11information", !6, i64 0, !6, i64 20, !6, i64 40, !13, i64 44, !6, i64 48, !6, i64 148}
!13 = !{!"int", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !7, i64 0}
!16 = !{!17, !18, i64 16}
!17 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !19, i64 24, !20, i64 28, !20, i64 32, !21, i64 40, !23, i64 48, !6, i64 64, !13, i64 192, !24, i64 200, !25, i64 208}
!18 = !{!"long", !6, i64 0}
!19 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!20 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!21 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !22, i64 0}
!22 = !{!"any pointer", !6, i64 0}
!23 = !{!"_ZTSNSt8ios_base6_WordsE", !22, i64 0, !18, i64 8}
!24 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !22, i64 0}
!25 = !{!"_ZTSSt6locale", !26, i64 0}
!26 = !{!"p1 _ZTSNSt6locale5_ImplE", !22, i64 0}
!27 = !{!12, !13, i64 44}
!28 = !{!29, !33, i64 240}
!29 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !17, i64 0, !30, i64 216, !6, i64 224, !31, i64 225, !32, i64 232, !33, i64 240, !34, i64 248, !35, i64 256}
!30 = !{!"p1 _ZTSSo", !22, i64 0}
!31 = !{!"bool", !6, i64 0}
!32 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !22, i64 0}
!33 = !{!"p1 _ZTSSt5ctypeIcE", !22, i64 0}
!34 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!35 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!36 = !{!37, !6, i64 56}
!37 = !{!"_ZTSSt5ctypeIcE", !38, i64 0, !39, i64 16, !31, i64 24, !40, i64 32, !40, i64 40, !41, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!38 = !{!"_ZTSNSt6locale5facetE", !13, i64 8}
!39 = !{!"p1 _ZTS15__locale_struct", !22, i64 0}
!40 = !{!"p1 int", !22, i64 0}
!41 = !{!"p1 short", !22, i64 0}
!42 = distinct !{!42, !9, !10}
